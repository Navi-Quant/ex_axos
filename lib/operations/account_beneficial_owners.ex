defmodule ExAxos.AccountBeneficialOwners do
  @moduledoc """
  Provides API endpoints related to account beneficial owners
  """

  @default_client ExAxos.Client

  @doc """
  Get Beneficial Owners for Account

  Retrieve beneficial owners for an account.
  """
  @spec get_beneficial_owners_for_account(integer, keyword) ::
          {:ok, ExAxos.Schema.AccountBeneficialOwnersRestDigest.t()} | :error
  def get_beneficial_owners_for_account(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountBeneficialOwners, :get_beneficial_owners_for_account},
      url: "/rest/account/v1/beneficialOwners/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountBeneficialOwnersRestDigest, :t}},
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
  @spec update_beneficial_owners_for_account(
          integer,
          ExAxos.Schema.AccountBeneficialOwnersRestDigest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def update_beneficial_owners_for_account(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountBeneficialOwners, :update_beneficial_owners_for_account},
      url: "/rest/account/v1/edit/beneficialOwners/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountBeneficialOwnersRestDigest, :t}}],
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
