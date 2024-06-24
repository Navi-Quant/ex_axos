defmodule ExAxos.RiaModelAPI do
  @moduledoc """
  Provides API endpoint related to ria model api
  """

  @default_client ExAxos.Client

  @doc """
  Get Models For Ria

  Retrieve a list of models for a specified RIA
  """
  @spec get_models_for_ria_using_get(String.t(), keyword) ::
          {:ok, ExAxos.RiaModelDigest.t()} | :error
  def get_models_for_ria_using_get(advisorId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [advisorId: advisorId],
      call: {ExAxos.RiaModelAPI, :get_models_for_ria_using_get},
      url: "/rest/model/v1/riamodels/#{advisorId}",
      method: :get,
      response: [{200, {ExAxos.RiaModelDigest, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end
end
