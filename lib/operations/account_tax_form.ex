defmodule ExAxos.AccountTaxForm do
  @moduledoc """
  Provides API endpoints related to account tax form
  """

  @default_client ExAxos.Client

  @doc """
  Get Tax Forms By Account

  Returns a list of all available pdf tax forms
  """
  @spec get_tax_forms_by_account(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTaxFormsResultDigest.t()} | :error
  def get_tax_forms_by_account(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountTaxForm, :get_tax_forms_by_account},
      url: "/rest/account/v1/taxforms/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountTaxFormsResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Tax Form

  Retrieves a tax form file pdf as binary array
  """
  @spec retrieve_tax_form(String.t(), String.t(), String.t(), String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTaxFormDocumentResultDigest.t()} | :error
  def retrieve_tax_form(accountNumber, formType, hostKey, taxYear, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, formType: formType, hostKey: hostKey, taxYear: taxYear],
      call: {ExAxos.AccountTaxForm, :retrieve_tax_form},
      url: "/rest/account/v1/taxform/#{accountNumber}/#{formType}/#{taxYear}/#{hostKey}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountTaxFormDocumentResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
