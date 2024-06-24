defmodule ExAxos.AccountFirmContactsAPI do
  @moduledoc """
  Provides API endpoint related to account firm contacts api
  """

  @default_client ExAxos.Client

  @doc """
  viewFirmContactsByAccount
  """
  @spec view_firm_contacts_by_account_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountFirmContactsResponseDigest.t()} | :error
  def view_firm_contacts_by_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountFirmContactsAPI, :view_firm_contacts_by_account_using_get},
      url: "/rest/account/v1/firmContacts/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountFirmContactsResponseDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
