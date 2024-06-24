defmodule ExAxos.AccountForm do
  @moduledoc """
  Provides API endpoint related to account form
  """

  @default_client ExAxos.Client

  @doc """
  Get PDF Forms By Account

  Returns a list of all available pdf forms
  """
  @spec get_pdf_forms_by_account(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountFormsResultDigest.t()} | :error
  def get_pdf_forms_by_account(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountForm, :get_pdf_forms_by_account},
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
