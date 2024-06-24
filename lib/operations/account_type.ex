defmodule ExAxos.AccountType do
  @moduledoc """
  Provides API endpoints related to account type
  """

  @default_client ExAxos.Client

  @doc """
  View Account Type Detail

  Retrieve detailed information that pertains to the account type specified
  """
  @spec view_account_type_detail(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTypeDetailDigest.t()} | :error
  def view_account_type_detail(accountTypeCode, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountTypeCode: accountTypeCode],
      call: {ExAxos.AccountType, :view_account_type_detail},
      url: "/rest/accountType/v1/accountType/#{accountTypeCode}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountTypeDetailDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  View Account Types

  Retrieve information that pertains to the account type specified
  """
  @spec view_account_types(keyword) :: {:ok, ExAxos.Schema.AccountTypeListDigest.t()} | :error
  def view_account_types(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.AccountType, :view_account_types},
      url: "/rest/accountType/v1/accountTypes",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountTypeListDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
