defmodule ExAxos.AccountAuthorizations do
  @moduledoc """
  Provides API endpoint related to account authorizations
  """

  @default_client ExAxos.Client

  @doc """
  viewAccountAuthorizations
  """
  @spec view_account_authorizations_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountAuthorizationsResponseDigest.t()} | :error
  def view_account_authorizations_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountAuthorizations, :view_account_authorizations_using_get},
      url: "/rest/account/v1/accountAuthorizations/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountAuthorizationsResponseDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
