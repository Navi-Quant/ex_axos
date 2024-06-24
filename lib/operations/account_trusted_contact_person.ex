defmodule ExAxos.AccountTrustedContactPerson do
  @moduledoc """
  Provides API endpoints related to account trusted contact person
  """

  @default_client ExAxos.Client

  @doc """
  Delete Trusted Contact Person

  Delete trusted contact person
  """
  @spec delete_trusted_contact_person_using_delete(integer, keyword) ::
          {:ok, ExAxos.Schema.TrustedContactResponse.t()} | :error
  def delete_trusted_contact_person_using_delete(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountTrustedContactPerson, :delete_trusted_contact_person_using_delete},
      url: "/rest/account/v1/trustedContactPerson/delete/#{accountNumber}",
      method: :delete,
      response: [
        {200, {ExAxos.Schema.TrustedContactResponse, :t}},
        {204, :null},
        {401, :null},
        {403, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Trusted Contact Person

  Retrieve trusted contact person related to the account number specified
  """
  @spec retrieve_trusted_contact_person_using_get(integer, keyword) ::
          {:ok, ExAxos.Schema.TrustedContactResponse.t()} | :error
  def retrieve_trusted_contact_person_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountTrustedContactPerson, :retrieve_trusted_contact_person_using_get},
      url: "/rest/account/v1/trustedContactPerson/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.TrustedContactResponse, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Save Trusted Contact Person

  Save trusted contact person
  """
  @spec save_trusted_contact_person_using_put(ExAxos.Schema.TrustedContactDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.TrustedContactResponse.t()} | :error
  def save_trusted_contact_person_using_put(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.AccountTrustedContactPerson, :save_trusted_contact_person_using_put},
      url: "/rest/account/v1/trustedContactPerson/save",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.Schema.TrustedContactDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.TrustedContactResponse, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
