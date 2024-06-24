defmodule ExAxos.RepresentativeMaintenanceAPI do
  @moduledoc """
  Provides API endpoint related to representative maintenance api
  """

  @default_client ExAxos.Client

  @doc """
  Create Representative

  Create a new representative record
  """
  @spec create_representative_using_post(ExAxos.RepresentativeGenerationDigest.t(), keyword) ::
          {:ok, ExAxos.RepresentativeCreateResultDigest.t()} | :error
  def create_representative_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.RepresentativeMaintenanceAPI, :create_representative_using_post},
      url: "/rest/representative/v1/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.RepresentativeGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.RepresentativeCreateResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
