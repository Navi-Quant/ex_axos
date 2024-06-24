defmodule ExAxos.FirmAPI do
  @moduledoc """
  Provides API endpoints related to firm api
  """

  @default_client ExAxos.Client

  @doc """
  Fetch Firms

  Retrieve a list of Firms.

  ## Options

    * `search`: search

  """
  @spec fetch_firms_v1_using_get(keyword) :: {:ok, ExAxos.FirmSearchResultDigest.t()} | :error
  def fetch_firms_v1_using_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:search])

    client.request(%{
      args: [],
      call: {ExAxos.FirmAPI, :fetch_firms_v1_using_get},
      url: "/rest/firm/v1/firms",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.FirmSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Firm Lookup

  Retrieve detailed information that pertains to the specified firm.
  """
  @spec firm_lookup_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.FirmSearchResultDigest.t()} | :error
  def firm_lookup_v1_using_get(firmId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [firmId: firmId],
      call: {ExAxos.FirmAPI, :firm_lookup_v1_using_get},
      url: "/rest/firm/v1/firm/#{firmId}",
      method: :get,
      response: [
        {200, {ExAxos.FirmSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
