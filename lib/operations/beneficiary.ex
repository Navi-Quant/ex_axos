defmodule ExAxos.Beneficiary do
  @moduledoc """
  Provides API endpoints related to beneficiary
  """

  @default_client ExAxos.Client

  @doc """
  Find Beneficiary

  Retrieve detailed information that pertains to the beneficiary specified.
  """
  @spec find_beneficiary(String.t(), keyword) ::
          {:ok, ExAxos.Schema.BeneficiarySearchResult.t()} | :error
  def find_beneficiary(beneficiaryId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [beneficiaryId: beneficiaryId],
      call: {ExAxos.Beneficiary, :find_beneficiary},
      url: "/rest/beneficiary/v1/beneficiary/#{beneficiaryId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.BeneficiarySearchResult, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Search For Beneficiary

  Retrieve a list of beneficiaries

  ## Options

    * `search`: search

  """
  @spec search_for_beneficiary(keyword) ::
          {:ok, ExAxos.Schema.BeneficiarySearchResult.t()} | :error
  def search_for_beneficiary(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:search])

    client.request(%{
      args: [],
      call: {ExAxos.Beneficiary, :search_for_beneficiary},
      url: "/rest/beneficiary/v1/beneficiaries",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.BeneficiarySearchResult, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
