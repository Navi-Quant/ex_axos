defmodule ExAxos.AccountPendingTransactionsAPI do
  @moduledoc """
  Provides API endpoint related to account pending transactions api
  """

  @default_client ExAxos.Client

  @doc """
  View Pending Transactions

  The account pending transactions api returns the transactions that are currently pending for the account.
  """
  @spec view_pending_transactions_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountPendingTransactionResultDigest.t()} | :error
  def view_pending_transactions_v1_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPendingTransactionsAPI, :view_pending_transactions_v1_using_get},
      url: "/rest/account/v1/pendingTransactions/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountPendingTransactionResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
