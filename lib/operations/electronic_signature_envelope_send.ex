defmodule ExAxos.ElectronicSignatureEnvelopeSend do
  @moduledoc """
  Provides API endpoints related to electronic signature envelope send
  """

  @default_client ExAxos.Client

  @doc """
  Resend Envelope

  Resend documents to recipients for an account to be signed electronically
  """
  @spec resend_envelope(String.t(), keyword) ::
          {:ok, ExAxos.Schema.ElectronicSignatureSendStatusDigest.t()} | :error
  def resend_envelope(envelopeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [envelopeId: envelopeId],
      call: {ExAxos.ElectronicSignatureEnvelopeSend, :resend_envelope},
      url: "/rest/esignature/v1/envelope/resend/#{envelopeId}",
      method: :put,
      response: [
        {200, {ExAxos.Schema.ElectronicSignatureSendStatusDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Send Envelope

  Send documents to recipients for an account to be signed electronically.
  """
  @spec send_envelope(ExAxos.Schema.ElectronicSignatureEnvelopeDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.ElectronicSignatureSendStatusDigest.t()} | :error
  def send_envelope(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.ElectronicSignatureEnvelopeSend, :send_envelope},
      url: "/rest/esignature/v1/envelope/send",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.ElectronicSignatureEnvelopeDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.ElectronicSignatureSendStatusDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
