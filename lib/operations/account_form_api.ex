defmodule ExAxos.AccountFormAPI do
  @moduledoc """
  Provides API endpoint related to account form api
  """

  @default_client ExAxos.Client

  @doc """
  Get PDF Forms By Account

  Returns a list of all available pdf forms
  """
  @spec get_tax_forms_by_account_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountFormsResultDigest.t()} | :error
  def get_tax_forms_by_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountFormAPI, :get_tax_forms_by_account_using_get},
      url: "/rest/account/v1/forms/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountFormsResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
