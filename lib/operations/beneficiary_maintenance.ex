defmodule ExAxos.BeneficiaryMaintenance do
  @moduledoc """
  Provides API endpoints related to beneficiary maintenance
  """

  @default_client ExAxos.Client

  @doc """
  Create Beneficiary

  Create a new Beneficiary that can be used to attach to an account
  """
  @spec create_beneficiary(ExAxos.Schema.BeneficiaryCreateRestRequest.t(), keyword) ::
          {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def create_beneficiary(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.BeneficiaryMaintenance, :create_beneficiary},
      url: "/rest/beneficiary/v1/beneficiary/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.BeneficiaryCreateRestRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.RestResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Beneficiary

  Update a beneficiary that already exists.
  """
  @spec update_beneficiary(String.t(), ExAxos.Schema.BeneficiaryCreateRestRequest.t(), keyword) ::
          {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def update_beneficiary(beneficiaryId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [beneficiaryId: beneficiaryId, body: body],
      call: {ExAxos.BeneficiaryMaintenance, :update_beneficiary},
      url: "/rest/beneficiary/v1/beneficiary/edit/#{beneficiaryId}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.BeneficiaryCreateRestRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.RestResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
