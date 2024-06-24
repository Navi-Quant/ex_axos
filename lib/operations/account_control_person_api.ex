defmodule ExAxos.AccountControlPersonAPI do
  @moduledoc """
  Provides API endpoints related to account control person api
  """

  @default_client ExAxos.Client

  @doc """
  Get Control Person for Account

  Retrieve control person tied to account
  """
  @spec get_control_person_by_account_using_get(integer, keyword) ::
          {:ok, ExAxos.Schema.AccountControlPersonDigest.t()} | :error
  def get_control_person_by_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountControlPersonAPI, :get_control_person_by_account_using_get},
      url: "/rest/account/v1/controlPerson/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountControlPersonDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Control Person

  Update Control Person for existing Advisor Services Account.
  """
  @spec update_control_person_using_post(
          integer,
          ExAxos.Schema.AccountControlPersonDigest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def update_control_person_using_post(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountControlPersonAPI, :update_control_person_using_post},
      url: "/rest/account/v1/edit/controlPerson/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountControlPersonDigest, :t}}],
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
