defmodule ExAxos.ModelAllocation do
  @moduledoc """
  Provides API endpoint related to model allocation
  """

  @default_client ExAxos.Client

  @doc """
  View Model Allocation

  Retrieve allocations for a model.
  """
  @spec view_model_allocation(String.t(), keyword) ::
          {:ok, ExAxos.Schema.ModelAllocationDigest.t()} | :error
  def view_model_allocation(modelId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [modelId: modelId],
      call: {ExAxos.ModelAllocation, :view_model_allocation},
      url: "/rest/model/v1/allocation/#{modelId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.ModelAllocationDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
