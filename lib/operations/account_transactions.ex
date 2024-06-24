defmodule ExAxos.AccountTransactions do
  @moduledoc """
  Provides API endpoints related to account transactions
  """

  @default_client ExAxos.Client

  @doc """
  View Transactions

  Retrieve the transactions for a specific account
  """
  @spec view_transactions(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTransactionDigest.t()} | :error
  def view_transactions(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountTransactions, :view_transactions},
      url: "/rest/account/v1/transactions/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountTransactionDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  View Transactions By Date Range

  Retrieve the transactions for a specific account and date range
  """
  @spec view_transactions_by_date_range(String.t(), String.t(), String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTransactionDigest.t()} | :error
  def view_transactions_by_date_range(accountNumber, fromDate, throughDate, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, fromDate: fromDate, throughDate: throughDate],
      call: {ExAxos.AccountTransactions, :view_transactions_by_date_range},
      url: "/rest/account/v1/transactions/#{accountNumber}/fromDate/#{fromDate}/throughDate/#{throughDate}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountTransactionDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
