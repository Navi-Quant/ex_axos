defmodule ExAxos.BeneficiaryMaintenanceAPI do
  @moduledoc """
  Provides API endpoints related to beneficiary maintenance api
  """

  @default_client ExAxos.Client

  @doc """
  Create Beneficiary

  Create a new Beneficiary that can be used to attach to an account
  """
  @spec create_beneficiary_v1_using_post(ExAxos.BeneficiaryCreateRestRequest.t(), keyword) ::
          {:ok, ExAxos.RestResultDigest.t()} | :error
  def create_beneficiary_v1_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.BeneficiaryMaintenanceAPI, :create_beneficiary_v1_using_post},
      url: "/rest/beneficiary/v1/beneficiary/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.BeneficiaryCreateRestRequest, :t}}],
      response: [
        {200, {ExAxos.RestResultDigest, :t}},
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
  @spec edit_beneficiary_v1_using_post(
          String.t(),
          ExAxos.BeneficiaryCreateRestRequest.t(),
          keyword
        ) :: {:ok, ExAxos.RestResultDigest.t()} | :error
  def edit_beneficiary_v1_using_post(beneficiaryId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [beneficiaryId: beneficiaryId, body: body],
      call: {ExAxos.BeneficiaryMaintenanceAPI, :edit_beneficiary_v1_using_post},
      url: "/rest/beneficiary/v1/beneficiary/edit/#{beneficiaryId}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.BeneficiaryCreateRestRequest, :t}}],
      response: [
        {200, {ExAxos.RestResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
