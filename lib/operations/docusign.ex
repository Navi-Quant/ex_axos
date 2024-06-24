defmodule ExAxos.Docusign do
  @moduledoc """
  Provides API endpoints related to docusign
  """

  @default_client ExAxos.Client

  @doc """
  createEnvelope
  """
  @spec create_envelope(String.t(), ExAxos.Schema.EnvelopeDefinition.t(), keyword) ::
          {:ok, ExAxos.Schema.CreateEnvelopeResponse.t()} | :error
  def create_envelope(sobo, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sobo: sobo, body: body],
      call: {ExAxos.Docusign, :create_envelope},
      url: "/rest/docusign/account/#{sobo}/envelope",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.EnvelopeDefinition, :t}}],
      response: [
        {200, {ExAxos.Schema.CreateEnvelopeResponse, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  retrieveBrands
  """
  @spec retrieve_brands(keyword) :: {:ok, ExAxos.Schema.Brands.t()} | :error
  def retrieve_brands(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.Docusign, :retrieve_brands},
      url: "/rest/docusign/account/brands",
      method: :get,
      response: [{200, {ExAxos.Schema.Brands, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end

  @doc """
  retrieveEnvelopesFromUserFolder

  ## Options

    * `fromDate`: fromDate
    * `searchText`: searchText
    * `status`: status
    * `toDate`: toDate

  """
  @spec retrieve_envelopes_from_user_folder(String.t(), String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSearchResult.t()} | :error
  def retrieve_envelopes_from_user_folder(folderId, sobo, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:fromDate, :searchText, :status, :toDate])

    client.request(%{
      args: [folderId: folderId, sobo: sobo],
      call: {ExAxos.Docusign, :retrieve_envelopes_from_user_folder},
      url: "/rest/docusign/account/#{sobo}/folder/#{folderId}/envelopes",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.EnvelopeSearchResult, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  retrieveUserFolders
  """
  @spec retrieve_user_folders(String.t(), keyword) :: {:ok, ExAxos.Schema.Folders.t()} | :error
  def retrieve_user_folders(sobo, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [sobo: sobo],
      call: {ExAxos.Docusign, :retrieve_user_folders},
      url: "/rest/docusign/account/#{sobo}/folders",
      method: :get,
      response: [{200, {ExAxos.Schema.Folders, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end
end
