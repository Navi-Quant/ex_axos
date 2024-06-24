defmodule ExAxos.Employer do
  @moduledoc """
  Provides API endpoint related to employer
  """

  @default_client ExAxos.Client

  @doc """
  Fetch Employers

  Retrieve a list of Employers for the RIA.
  """
  @spec fetch_employers_v1_using_get(keyword) ::
          {:ok, ExAxos.Schema.EmployerSearchResultDigest.t()} | :error
  def fetch_employers_v1_using_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.Employer, :fetch_employers_v1_using_get},
      url: "/rest/employer/v1/employers",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EmployerSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
