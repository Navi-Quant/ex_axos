defmodule ExAxos.ElectronicSignatureEnvelopeSearch do
  @moduledoc """
  Provides API endpoints related to electronic signature envelope search
  """

  @default_client ExAxos.Client

  @doc """
  View Envelope

  Retrieve detailed information about a Docusign envelope that have been sent/created by the authenticated API User.

  ## Options

    * `retrieveDocuments`: retrieveDocuments

  """
  @spec view_envelope(String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSearchResultDigest.t()} | :error
  def view_envelope(envelopeId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:retrieveDocuments])

    client.request(%{
      args: [envelopeId: envelopeId],
      call: {ExAxos.ElectronicSignatureEnvelopeSearch, :view_envelope},
      url: "/rest/esignature/v1/envelope/#{envelopeId}",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.EnvelopeSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  View Envelopes

  Retrieves a list of envelopes that are associated with the user authenticated. If no parameters are specified, the default folder is the Sent Items folders with envelopes having a status of Sent.

  ## Options

    * `envelopeStatus`: envelopeStatus
    * `folderType`: folderType
    * `fromDate`: fromDate
    * `toDate`: toDate

  """
  @spec view_envelopes(keyword) :: {:ok, ExAxos.Schema.EnvelopeSearchResultDigest.t()} | :error
  def view_envelopes(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:envelopeStatus, :folderType, :fromDate, :toDate])

    client.request(%{
      args: [],
      call: {ExAxos.ElectronicSignatureEnvelopeSearch, :view_envelopes},
      url: "/rest/esignature/v1/envelopes",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.EnvelopeSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  View Link

  View link
  """
  @spec view_link(String.t(), keyword) :: {:ok, ExAxos.Schema.EnvelopeLinkDigest.t()} | :error
  def view_link(envelopeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [envelopeId: envelopeId],
      call: {ExAxos.ElectronicSignatureEnvelopeSearch, :view_link},
      url: "/rest/esignature/v1/envelope/link/#{envelopeId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EnvelopeLinkDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
