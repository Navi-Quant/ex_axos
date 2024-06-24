defmodule ExAxos.DistributionAPI do
  @moduledoc """
  Provides API endpoint related to distribution api
  """

  @default_client ExAxos.Client

  @doc """
  Get a list of account distributions

  List all Systematic Distributions tied to the account
  """
  @spec get_distributions_using_get(integer, keyword) ::
          {:ok, ExAxos.Schema.DistributionResponseResultDigest.t()} | :error
  def get_distributions_using_get(accountId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountId: accountId],
      call: {ExAxos.DistributionAPI, :get_distributions_using_get},
      url: "/rest/account/v1/distributions/#{accountId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.DistributionResponseResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
