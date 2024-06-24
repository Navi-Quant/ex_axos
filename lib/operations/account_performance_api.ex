defmodule ExAxos.AccountPerformanceAPI do
  @moduledoc """
  Provides API endpoints related to account performance api
  """

  @default_client ExAxos.Client

  @doc """
  Account TWR

  Retrieve account TWR for an optional date period.

  ## Options

    * `fromDate`: fromDate
    * `toDate`: toDate

  """
  @spec view_account_twr_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.TotalReturnSummaryDigestsRest.t()} | :error
  def view_account_twr_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:fromDate, :toDate])

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPerformanceAPI, :view_account_twr_using_get},
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
  @spec view_monthly_account_twr_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.TotalReturnItemDigestsRest.t()} | :error
  def view_monthly_account_twr_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPerformanceAPI, :view_monthly_account_twr_using_get},
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
