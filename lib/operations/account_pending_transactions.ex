defmodule ExAxos.AccountPendingTransactions do
  @moduledoc """
  Provides API endpoint related to account pending transactions
  """

  @default_client ExAxos.Client

  @doc """
  View Pending Transactions

  The account pending transactions api returns the transactions that are currently pending for the account.
  """
  @spec view_pending_transactions(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountPendingTransactionResultDigest.t()} | :error
  def view_pending_transactions(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPendingTransactions, :view_pending_transactions},
      url: "/rest/account/v1/pendingTransactions/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountPendingTransactionResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
