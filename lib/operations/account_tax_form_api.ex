defmodule ExAxos.AccountTaxFormAPI do
  @moduledoc """
  Provides API endpoints related to account tax form api
  """

  @default_client ExAxos.Client

  @doc """
  Get Tax Forms By Account

  Returns a list of all available pdf tax forms
  """
  @spec get_tax_forms_by_account_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTaxFormsResultDigest.t()} | :error
  def get_tax_forms_by_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountTaxFormAPI, :get_tax_forms_by_account_using_get},
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
  @spec retrieve_tax_form_using_get(String.t(), String.t(), String.t(), String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountTaxFormDocumentResultDigest.t()} | :error
  def retrieve_tax_form_using_get(accountNumber, formType, hostKey, taxYear, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, formType: formType, hostKey: hostKey, taxYear: taxYear],
      call: {ExAxos.AccountTaxFormAPI, :retrieve_tax_form_using_get},
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
