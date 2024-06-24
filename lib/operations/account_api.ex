defmodule ExAxos.AccountAPI do
  @moduledoc """
  Provides API endpoints related to account api
  """

  @default_client ExAxos.Client

  @doc """
  Account Lookup

  Retrieve detailed information that pertains to the account specified.
  """
  @spec do_account_lookup_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountBasicDigest.t()} | :error
  def do_account_lookup_v1_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountAPI, :do_account_lookup_v1_using_get},
      url: "/rest/account/v1/account/#{accountNumber}",
      method: :get,
      response: [{200, {ExAxos.AccountBasicDigest, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end

  @doc """
  Account Search

  The account search API will retrieve accounts meeting search criteria provided. If no search criteria is provided, all accounts associated with the authenticated user's advisor's id and the their user type will be returned. A search may be performed for a specific account.

  ## Options

    * `limit`: limit
    * `offset`: offset
    * `orderByDateCreatedFrom`: orderByDateCreatedFrom
    * `representativeId`: representativeId
    * `search`: search

  """
  @spec do_account_search_v1_using_get(keyword) :: {:ok, ExAxos.AccountResultDigest.t()} | :error
  def do_account_search_v1_using_get(opts \\ []) do
    client = opts[:client] || @default_client

    query =
      Keyword.take(opts, [:limit, :offset, :orderByDateCreatedFrom, :representativeId, :search])

    client.request(%{
      args: [],
      call: {ExAxos.AccountAPI, :do_account_search_v1_using_get},
      url: "/rest/account/v1/accounts",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.AccountResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Account Summaries

  Retrieve a list of account summaries.

  ## Options

    * `limit`: limit
    * `offset`: offset

  """
  @spec retrieve_account_summaries_using_get(keyword) ::
          {:ok, ExAxos.AccountSummariesResultDigest.t()} | :error
  def retrieve_account_summaries_using_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [],
      call: {ExAxos.AccountAPI, :retrieve_account_summaries_using_get},
      url: "/rest/account/v1/accountSummaries",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.AccountSummariesResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Edit Account Owners

  Edit Account owners based on account number
  """
  @spec update_account_owners_using_put(String.t(), ExAxos.AccountOwner.t(), keyword) ::
          {:ok, ExAxos.AccountBasicDigest.t()} | :error
  def update_account_owners_using_put(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountAPI, :update_account_owners_using_put},
      url: "/rest/account/v1/accountowners/edit/#{accountNumber}",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.AccountOwner, :t}}],
      response: [
        {200, {ExAxos.AccountBasicDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
