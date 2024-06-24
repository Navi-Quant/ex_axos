defmodule ExAxos.AggInvestorController do
  @moduledoc """
  Provides API endpoints related to agg investor controller
  """

  @default_client ExAxos.Client

  @doc """
  findConfigById
  """
  @spec find_config_by_id(keyword) :: {:ok, ExAxos.Schema.AggHeldAwaysRestResponse.t()} | :error
  def find_config_by_id(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.AggInvestorController, :find_config_by_id},
      url: "/rest/aggInvestor/v1/heldAways",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AggHeldAwaysRestResponse, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  findConfigBySearch

  ## Options

    * `accountNumber`: accountNumber
    * `guid`: guid
    * `userId`: userId

  """
  @spec find_config_by_search(keyword) ::
          {:ok, ExAxos.Schema.AggInvestorRestResponse.t()} | :error
  def find_config_by_search(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:accountNumber, :guid, :userId])

    client.request(%{
      args: [],
      call: {ExAxos.AggInvestorController, :find_config_by_search},
      url: "/rest/aggInvestor/v1/config/search",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.AggInvestorRestResponse, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  updateAggInvestor
  """
  @spec update_agg_investor(ExAxos.Schema.AggInvestorUpdateRequest.t(), keyword) ::
          {:ok, ExAxos.Schema.ResponseEntity.t()} | :error
  def update_agg_investor(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.AggInvestorController, :update_agg_investor},
      url: "/rest/aggInvestor/v1/config",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.Schema.AggInvestorUpdateRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.ResponseEntity, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
