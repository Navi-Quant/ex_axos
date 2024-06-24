defmodule ExAxos.AccountBeneficialOwnersAPI do
  @moduledoc """
  Provides API endpoints related to account beneficial owners api
  """

  @default_client ExAxos.Client

  @doc """
  Get Beneficial Owners for Account

  Retrieve beneficial owners for an account.
  """
  @spec get_beneficial_owners_by_account_using_get(integer, keyword) ::
          {:ok, ExAxos.AccountBeneficialOwnersRestDigest.t()} | :error
  def get_beneficial_owners_by_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountBeneficialOwnersAPI, :get_beneficial_owners_by_account_using_get},
      url: "/rest/account/v1/beneficialOwners/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountBeneficialOwnersRestDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Beneficial Owners for Account

  Update Beneficial Owners for existing Advisor Services Account.
  """
  @spec update_beneficial_owners_using_post(
          integer,
          ExAxos.AccountBeneficialOwnersRestDigest.t(),
          keyword
        ) :: {:ok, ExAxos.RestResultDigest.t()} | :error
  def update_beneficial_owners_using_post(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountBeneficialOwnersAPI, :update_beneficial_owners_using_post},
      url: "/rest/account/v1/edit/beneficialOwners/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.AccountBeneficialOwnersRestDigest, :t}}],
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
