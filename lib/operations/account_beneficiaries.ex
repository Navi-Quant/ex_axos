defmodule ExAxos.AccountBeneficiaries do
  @moduledoc """
  Provides API endpoint related to account beneficiaries
  """

  @default_client ExAxos.Client

  @doc """
  View Beneficiaries by Account

  The account beneficiaries api returns the current beneficiaries for an account.
  """
  @spec view_beneficiaries_by_account_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountBeneficiariesResultDigest.t()} | :error
  def view_beneficiaries_by_account_v1_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountBeneficiaries, :view_beneficiaries_by_account_v1_using_get},
      url: "/rest/account/v1/beneficiariesByAccount/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountBeneficiariesResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
