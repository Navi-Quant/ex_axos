defmodule ExAxos.Auth do
  @moduledoc false

  @default_client ExAxos.Client

  @spec request_access_token(String.t(), String.t(), String.t(), String.t(), keyword) ::
          {:ok, ExAxos.Auth.AccessTokenDigest.t()} | :error
  def request_access_token(client_id, client_secret, username, password, opts \\ []) do
    client = opts[:client] || @default_client

    body = [
      grant_type: "password",
      client_id: client_id,
      client_secret: client_secret,
      username: username,
      password: password
    ]

    client.request(%{
      args: [],
      call: {ExAxos.Auth, :request_access_token},
      url: "/oauth/token",
      method: :post,
      query: body,
      response: [
        {200, {ExAxos.Auth.AccessTokenDigest, :t}},
        {400, :null},
        {401, :null},
        {404, :null}
      ],
      opts: [{:auth, :skip} | opts]
    })
  end
end
