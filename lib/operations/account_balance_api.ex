defmodule ExAxos.AccountBalanceAPI do
  @moduledoc """
  Provides API endpoint related to account balance api
  """

  @default_client ExAxos.Client

  @doc """
  Account Balances

  Retrieve balance that pertains to the account number specified.
  """
  @spec view_account_balance_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountBalanceDigest.t()} | :error
  def view_account_balance_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountBalanceAPI, :view_account_balance_using_get},
      url: "/rest/account/v1/accountBalances/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountBalanceDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
