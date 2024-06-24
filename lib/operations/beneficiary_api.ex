defmodule ExAxos.BeneficiaryAPI do
  @moduledoc """
  Provides API endpoints related to beneficiary api
  """

  @default_client ExAxos.Client

  @doc """
  Find Beneficiary

  Retrieve detailed information that pertains to the beneficiary specified.
  """
  @spec do_find_beneficiary_version1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.BeneficiarySearchResult.t()} | :error
  def do_find_beneficiary_version1_using_get(beneficiaryId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [beneficiaryId: beneficiaryId],
      call: {ExAxos.BeneficiaryAPI, :do_find_beneficiary_version1_using_get},
      url: "/rest/beneficiary/v1/beneficiary/#{beneficiaryId}",
      method: :get,
      response: [
        {200, {ExAxos.BeneficiarySearchResult, :t}},
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
  @spec do_search_for_beneficiary_version1_using_get(keyword) ::
          {:ok, ExAxos.BeneficiarySearchResult.t()} | :error
  def do_search_for_beneficiary_version1_using_get(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:search])

    client.request(%{
      args: [],
      call: {ExAxos.BeneficiaryAPI, :do_search_for_beneficiary_version1_using_get},
      url: "/rest/beneficiary/v1/beneficiaries",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.BeneficiarySearchResult, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
