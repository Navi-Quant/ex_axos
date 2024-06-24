defmodule ExAxos.ModelAllocationAPI do
  @moduledoc """
  Provides API endpoint related to model allocation api
  """

  @default_client ExAxos.Client

  @doc """
  View Model Allocation

  Retrieve allocations for a model.
  """
  @spec view_model_allocation_using_get(String.t(), keyword) ::
          {:ok, ExAxos.ModelAllocationDigest.t()} | :error
  def view_model_allocation_using_get(modelId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [modelId: modelId],
      call: {ExAxos.ModelAllocationAPI, :view_model_allocation_using_get},
      url: "/rest/model/v1/allocation/#{modelId}",
      method: :get,
      response: [
        {200, {ExAxos.ModelAllocationDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
