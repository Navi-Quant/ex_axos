defmodule ExAxos.InterestedParty do
  @moduledoc """
  Provides API endpoints related to interested party
  """

  @default_client ExAxos.Client

  @doc """
  disassocateInterestedParty
  """
  @spec disassocate_interested_party(ExAxos.Schema.InterestedPartyId.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountInterestedPartyResponseDigest.t()} | :error
  def disassocate_interested_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.InterestedParty, :disassocate_interested_party},
      url: "/rest/account/v1/interestedParty/disassociate",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.Schema.InterestedPartyId, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountInterestedPartyResponseDigest, :t}},
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
  @spec save_interested_party_by_account_v2(ExAxos.Schema.InterestedPartyRest2.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountInterestedPartyResponseDigest.t()} | :error
  def save_interested_party_by_account_v2(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.InterestedParty, :save_interested_party_by_account_v2},
      url: "/rest/account/v2/interestedParty/save",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.Schema.InterestedPartyRest2, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountInterestedPartyResponseDigest, :t}},
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
  @spec view_interested_party_by_account_v1(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountInterestedPartyResponseDigest.t()} | :error
  def view_interested_party_by_account_v1(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.InterestedParty, :view_interested_party_by_account_v1},
      url: "/rest/account/v1/interestedParty/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountInterestedPartyResponseDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
