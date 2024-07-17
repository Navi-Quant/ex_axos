defmodule ExAxos.Client do
  @moduledoc false

  def request(operation) do
    with {:ok, request} <- build_request(operation),
         :ok <- check_rate_limit(operation),
         {:ok, response} <- Req.request(request) do
      handle_response(response, operation.response)
    end
  end

  defp build_request(operation) do
    %{url: url, method: method, opts: opts} = operation
    query = Map.get(operation, :query, [])

    prod? = opts[:prod?]
    auth = opts[:auth]

    using_oauth? = match?({:oauth, _}, auth)

    # Using OAuth requires /rest2 instead of /rest
    url =
      if using_oauth? do
        String.replace_prefix(url, "/rest/", "/rest2/")
      else
        url
      end

    request =
      Req.new(
        base_url: base_url(prod?),
        url: url,
        method: method,
        params: query
      )

    with {:ok, auth} <- build_auth(auth) do
      {:ok, Req.merge(request, auth)}
    end
  end

  defp build_auth({:basic, auth}) do
    username = auth[:username]
    password = auth[:password]
    key = auth[:key]

    {:ok, auth: {:basic, "#{username}:#{password}"}, headers: %{x_tca_api_key: key}}
  end

  defp build_auth({:oauth, access_token}) when is_binary(access_token) do
    {:ok, auth: {:bearer, access_token}}
  end

  defp build_auth(:skip) do
    {:ok, []}
  end

  defp build_auth(_auth) do
    {:error, :unsupported_auth_type}
  end

  defp check_rate_limit(operation) do
    bucket = request_bucket(operation)
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

  defp request_bucket(operation) do
    auth = operation.opts[:auth]

    case auth do
      {:basic, basic} -> "basic:#{basic[:username]}"
      {:oauth, access} -> "oauth:#{access}"
      :skip -> "auth_setup"
    end
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

  defp base_url(prod?) do
    prod? = prod? || Application.get_env(:ex_axos, :prod?, false)

    if prod? do
      "https://app.axosadvisorservices.com/liberty"
    else
      "https://qa.axosadvisorservices.com/liberty"
    end
  end
end
