defmodule ExAxos.AccountStatementsAPI do
  @moduledoc """
  Provides API endpoints related to account statements api
  """

  @default_client ExAxos.Client

  @doc """
  Get Statements By Account

  Retrieves all of the available statements as a json AccountStatementsResultDigest class object. 
  """
  @spec get_statements_by_account_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountStatementsResultDigest.t()} | :error
  def get_statements_by_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountStatementsAPI, :get_statements_by_account_using_get},
      url: "/rest/account/v1/statements/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountStatementsResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Statement

  Retrieves a requested statement pdf within a AccountStatementDocumentResultDigest class object containing a binary data field.
  """
  @spec retrieve_statement_using_get(String.t(), String.t(), keyword) ::
          {:ok, ExAxos.AccountStatementDocumentResultDigest.t()} | :error
  def retrieve_statement_using_get(accountNumber, statementdate, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, statementdate: statementdate],
      call: {ExAxos.AccountStatementsAPI, :retrieve_statement_using_get},
      url: "/rest/account/v1/statement/#{accountNumber}/#{statementdate}",
      method: :get,
      response: [
        {200, {ExAxos.AccountStatementDocumentResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
