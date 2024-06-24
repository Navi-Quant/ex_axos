defmodule ExAxos.Client do
  @moduledoc false

  def request(operation) do
    request = build_request(operation)

    with {:ok, response} <- Req.request(request) do
      handle_response(response, operation.response)
    end
  end

  @base_url "https://qa.axosadvisorservices.com/liberty"

  defp build_request(operation) do
    %{url: url, method: method, opts: opts} = operation

    username = opts[:username]
    password = opts[:password]
    api_key = opts[:api_key]

    Req.new(
      base_url: @base_url,
      url: url,
      method: method,
      auth: {:basic, "#{username}:#{password}"},
      headers: %{x_tca_api_key: api_key}
    )
  end

  defp handle_response(%Req.Response{} = res, response_types) do
    {status, type} = Enum.find(response_types, fn {status, _} -> status == res.status end)

    if type == :null do
      {:error, error_response(status)}
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

  defp error_response(401), do: :unauthorized
  defp error_response(403), do: :forbidden
  defp error_response(404), do: :not_found
  defp error_response(500), do: :server_error
end
