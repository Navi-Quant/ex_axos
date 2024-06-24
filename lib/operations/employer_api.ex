defmodule ExAxos.EmployerAPI do
  @moduledoc """
  Provides API endpoint related to employer api
  """

  @default_client ExAxos.Client

  @doc """
  Fetch Employers

  Retrieve a list of Employers for the RIA.
  """
  @spec fetch_employers_v1_using_get(keyword) ::
          {:ok, ExAxos.EmployerSearchResultDigest.t()} | :error
  def fetch_employers_v1_using_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.EmployerAPI, :fetch_employers_v1_using_get},
      url: "/rest/employer/v1/employers",
      method: :get,
      response: [
        {200, {ExAxos.EmployerSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
