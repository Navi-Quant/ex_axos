defmodule ExAxos.RepresentativeMaintenance do
  @moduledoc """
  Provides API endpoint related to representative maintenance
  """

  @default_client ExAxos.Client

  @doc """
  Create Representative

  Create a new representative record
  """
  @spec create_representative(ExAxos.Schema.RepresentativeGenerationDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.RepresentativeCreateResultDigest.t()} | :error
  def create_representative(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.RepresentativeMaintenance, :create_representative},
      url: "/rest/representative/v1/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.RepresentativeGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.RepresentativeCreateResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
