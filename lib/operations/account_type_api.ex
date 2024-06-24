defmodule ExAxos.AccountTypeAPI do
  @moduledoc """
  Provides API endpoints related to account type api
  """

  @default_client ExAxos.Client

  @doc """
  View Account Type Detail

  Retrieve detailed information that pertains to the account type specified
  """
  @spec view_account_type_detail_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountTypeDetailDigest.t()} | :error
  def view_account_type_detail_v1_using_get(accountTypeCode, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountTypeCode: accountTypeCode],
      call: {ExAxos.AccountTypeAPI, :view_account_type_detail_v1_using_get},
      url: "/rest/accountType/v1/accountType/#{accountTypeCode}",
      method: :get,
      response: [
        {200, {ExAxos.AccountTypeDetailDigest, :t}},
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
  @spec view_account_types_v1_using_get(keyword) ::
          {:ok, ExAxos.AccountTypeListDigest.t()} | :error
  def view_account_types_v1_using_get(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [],
      call: {ExAxos.AccountTypeAPI, :view_account_types_v1_using_get},
      url: "/rest/accountType/v1/accountTypes",
      method: :get,
      response: [
        {200, {ExAxos.AccountTypeListDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
