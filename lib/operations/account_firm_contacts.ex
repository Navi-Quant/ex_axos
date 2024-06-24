defmodule ExAxos.AccountFirmContacts do
  @moduledoc """
  Provides API endpoint related to account firm contacts
  """

  @default_client ExAxos.Client

  @doc """
  viewFirmContactsByAccount
  """
  @spec view_firm_contacts_by_account(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountFirmContactsResponseDigest.t()} | :error
  def view_firm_contacts_by_account(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountFirmContacts, :view_firm_contacts_by_account},
      url: "/rest/account/v1/firmContacts/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountFirmContactsResponseDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
