defmodule ExAxos.BulletinsAPI do
  @moduledoc """
  Provides API endpoints related to bulletins api
  """

  @default_client ExAxos.Client

  @doc """
  Get Bulletins

  Retrieve a list of bulletins
  """
  @spec get_all_bulletins_using_get(keyword) ::
          {:ok, ExAxos.BulletinsResponseResultDigest.t()} | :error
  def get_all_bulletins_using_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.BulletinsAPI, :get_all_bulletins_using_get},
      url: "/rest/bulletin/v1/bulletins",
      method: :get,
      response: [
        {200, {ExAxos.BulletinsResponseResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Get Bulletin

  Retrieve a specific bulletin
  """
  @spec get_bulletin_using_get(String.t(), keyword) ::
          {:ok, ExAxos.BulletinResponseResultDigest.t()} | :error
  def get_bulletin_using_get(bulletinId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [bulletinId: bulletinId],
      call: {ExAxos.BulletinsAPI, :get_bulletin_using_get},
      url: "/rest/bulletin/v1/bulletin/#{bulletinId}",
      method: :get,
      response: [
        {200, {ExAxos.BulletinResponseResultDigest, :t}},
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
  @spec remove_bulletin_using_get(String.t(), keyword) ::
          {:ok, ExAxos.RestResultDigest.t()} | :error
  def remove_bulletin_using_get(bulletinId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [bulletinId: bulletinId],
      call: {ExAxos.BulletinsAPI, :remove_bulletin_using_get},
      url: "/rest/bulletin/v1/removeBulletin/#{bulletinId}",
      method: :get,
      response: [{200, {ExAxos.RestResultDigest, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end
end
