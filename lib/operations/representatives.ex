defmodule ExAxos.Representatives do
  @moduledoc """
  Provides API endpoint related to representatives
  """

  @default_client ExAxos.Client

  @doc """
  Get Representatives

  Get a list of representatives visible to the user

  ## Options

    * `limit`: limit
    * `offset`: offset
    * `sortBy`: sortBy

  """
  @spec list_representatives_using_get(keyword) ::
          {:ok, ExAxos.Schema.RepresentativesResultDigest.t()} | :error
  def list_representatives_using_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset, :sortBy])

    client.request(%{
      args: [],
      call: {ExAxos.Representatives, :list_representatives_using_get},
      url: "/rest/representative/v1/representatives",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.RepresentativesResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
