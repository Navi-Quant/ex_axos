defmodule ExAxos.AccountPerformance do
  @moduledoc """
  Provides API endpoints related to account performance
  """

  @default_client ExAxos.Client

  @doc """
  Account TWR

  Retrieve account TWR for an optional date period.

  ## Options

    * `fromDate`: fromDate
    * `toDate`: toDate

  """
  @spec account_twr(String.t(), keyword) ::
          {:ok, ExAxos.Schema.TotalReturnSummaryDigestsRest.t()} | :error
  def account_twr(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:fromDate, :toDate])

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPerformance, :account_twr},
      url: "/rest/account/v1/accountTWR/#{accountNumber}",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.TotalReturnSummaryDigestsRest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Monthly Account TWR

  Retrieve monthly account TWRs for the life of an account.
  """
  @spec monthly_account_twr(String.t(), keyword) ::
          {:ok, ExAxos.Schema.TotalReturnItemDigestsRest.t()} | :error
  def monthly_account_twr(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPerformance, :monthly_account_twr},
      url: "/rest/account/v1/monthlyAccountTWR/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.TotalReturnItemDigestsRest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
