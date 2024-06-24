defmodule ExAxos.Firm do
  @moduledoc """
  Provides API endpoints related to firm
  """

  @default_client ExAxos.Client

  @doc """
  Fetch Firms

  Retrieve a list of Firms.

  ## Options

    * `search`: search

  """
  @spec fetch_firms(keyword) :: {:ok, ExAxos.Schema.FirmSearchResultDigest.t()} | :error
  def fetch_firms(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:search])

    client.request(%{
      args: [],
      call: {ExAxos.Firm, :fetch_firms},
      url: "/rest/firm/v1/firms",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.FirmSearchResultDigest, :t}},
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
  @spec firm_lookup(String.t(), keyword) ::
          {:ok, ExAxos.Schema.FirmSearchResultDigest.t()} | :error
  def firm_lookup(firmId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [firmId: firmId],
      call: {ExAxos.Firm, :firm_lookup},
      url: "/rest/firm/v1/firm/#{firmId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.FirmSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
