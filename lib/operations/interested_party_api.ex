defmodule ExAxos.InterestedPartyAPI do
  @moduledoc """
  Provides API endpoints related to interested party api
  """

  @default_client ExAxos.Client

  @doc """
  disassocateInterestedParty
  """
  @spec disassocate_interested_party_using_put(ExAxos.InterestedPartyId.t(), keyword) ::
          {:ok, ExAxos.AccountInterestedPartyResponseDigest.t()} | :error
  def disassocate_interested_party_using_put(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.InterestedPartyAPI, :disassocate_interested_party_using_put},
      url: "/rest/account/v1/interestedParty/disassociate",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.InterestedPartyId, :t}}],
      response: [
        {200, {ExAxos.AccountInterestedPartyResponseDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  saveInterestedPartyByAccount_v2
  """
  @spec save_interested_party_by_account_v2_using_put(ExAxos.InterestedPartyRest2.t(), keyword) ::
          {:ok, ExAxos.AccountInterestedPartyResponseDigest.t()} | :error
  def save_interested_party_by_account_v2_using_put(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.InterestedPartyAPI, :save_interested_party_by_account_v2_using_put},
      url: "/rest/account/v2/interestedParty/save",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.InterestedPartyRest2, :t}}],
      response: [
        {200, {ExAxos.AccountInterestedPartyResponseDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  viewInterestedPartyByAccount_v1
  """
  @spec view_interested_party_by_account_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountInterestedPartyResponseDigest.t()} | :error
  def view_interested_party_by_account_v1_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.InterestedPartyAPI, :view_interested_party_by_account_v1_using_get},
      url: "/rest/account/v1/interestedParty/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountInterestedPartyResponseDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
