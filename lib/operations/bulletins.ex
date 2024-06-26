defmodule ExAxos.Bulletins do
  @moduledoc """
  Provides API endpoints related to bulletins
  """

  @default_client ExAxos.Client

  @doc """
  Get Bulletin

  Retrieve a specific bulletin
  """
  @spec get_bulletin(String.t(), keyword) ::
          {:ok, ExAxos.Schema.BulletinResponseResultDigest.t()} | :error
  def get_bulletin(bulletinId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [bulletinId: bulletinId],
      call: {ExAxos.Bulletins, :get_bulletin},
      url: "/rest/bulletin/v1/bulletin/#{bulletinId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.BulletinResponseResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Get Bulletins

  Retrieve a list of bulletins
  """
  @spec get_bulletins(keyword) :: {:ok, ExAxos.Schema.BulletinsResponseResultDigest.t()} | :error
  def get_bulletins(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.Bulletins, :get_bulletins},
      url: "/rest/bulletin/v1/bulletins",
      method: :get,
      response: [
        {200, {ExAxos.Schema.BulletinsResponseResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Remove Bulletin

  Remove a bulletin
  """
  @spec remove_bulletin(String.t(), keyword) :: {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def remove_bulletin(bulletinId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [bulletinId: bulletinId],
      call: {ExAxos.Bulletins, :remove_bulletin},
      url: "/rest/bulletin/v1/removeBulletin/#{bulletinId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.RestResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
