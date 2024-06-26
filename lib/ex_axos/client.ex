defmodule ExAxos.Client do
  @moduledoc false

  def request(operation) do
    api_key = operation.opts[:api_key]

    with :ok <- check_rate_limit(api_key),
         {:ok, response} <- Req.request(build_request(operation)) do
      handle_response(response, operation.response)
    end
  end

  defp check_rate_limit(api_key) do
    bucket = "api_key:#{api_key}"
    interval = request_interval()
    limit = request_limit()

    case Hammer.check_rate(bucket, interval, limit) do
      {:allow, _count} ->
        :ok

      {:deny, _limit} ->
        case Hammer.inspect_bucket(bucket, interval, limit) do
          {:ok, {_, _, next_bucket_ms, _, _}} ->
            {:error, {:rate_limit_exceeded, next_bucket_ms}}

          {:error, reason} ->
            {:error, {:rate_limit_exceeded, reason}}
        end

      {:error, reason} ->
        {:error, {:rate_limit_error, reason}}
    end
  end

  @base_url "https://qa.axosadvisorservices.com/liberty"

  defp build_request(operation) do
    %{url: url, method: method, opts: opts} = operation
    query = Map.get(operation, :query, [])

    username = opts[:username]
    password = opts[:password]
    api_key = opts[:api_key]

    Req.new(
      base_url: @base_url,
      url: url,
      method: method,
      auth: {:basic, "#{username}:#{password}"},
      headers: %{x_tca_api_key: api_key},
      params: query
    )
  end

  defp handle_response(%Req.Response{} = res, response_types) do
    {status, type} = Enum.find(response_types, fn {status, _} -> status == res.status end)

    if type == :null do
      {:error, status_to_error(status)}
    else
      {:ok, do_decode(res.body, type)}
    end
  end

  defp do_decode(nil, _), do: nil
  defp do_decode("", :null), do: nil
  defp do_decode(value, {:string, :date}), do: Date.from_iso8601!(value)
  defp do_decode(value, {:string, :date_time}), do: value |> DateTime.from_iso8601() |> elem(1)
  defp do_decode(value, {:string, :time}), do: Time.from_iso8601!(value)

  defp do_decode(value, [type]), do: Enum.map(value, &do_decode(&1, type))

  defp do_decode(%{} = value, {module, type}) do
    base = if function_exported?(module, :__struct__, 0), do: struct(module), else: %{}
    fields = module.__fields__(type)

    for {field_name, field_type} <- fields, reduce: base do
      decoded_value ->
        case Map.fetch(value, to_string(field_name)) do
          {:ok, field_value} ->
            decoded_field_value = do_decode(field_value, field_type)
            Map.put(decoded_value, field_name, decoded_field_value)

          :error ->
            decoded_value
        end
    end
  end

  defp do_decode(value, _type), do: value

  defp status_to_error(401), do: :unauthorized
  defp status_to_error(403), do: :forbidden
  defp status_to_error(404), do: :not_found
  defp status_to_error(500), do: :server_error

  defp request_limit, do: Application.get_env(:ex_axos, :request_limit, 60)
  defp request_interval, do: Application.get_env(:ex_axos, :interval, :timer.minutes(1))
end
