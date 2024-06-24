defmodule ExAxos.AccountPositions do
  @moduledoc """
  Provides API endpoints related to account positions
  """

  @default_client ExAxos.Client

  @doc """
  Retrieve Account Positions by Statement Family Id

  Return all accounts and the positons within the account attached to a statement family.

  ## Options

    * `custodyManagement`: custodyManagement

  """
  @spec retrieve_statement_family_positions_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyAccountPositionsDigest.t()} | :error
  def retrieve_statement_family_positions_v1_using_get(statementFamilyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:custodyManagement])

    client.request(%{
      args: [statementFamilyId: statementFamilyId],
      call: {ExAxos.AccountPositions, :retrieve_statement_family_positions_v1_using_get},
      url: "/rest/account/v1/statementFamilies/#{statementFamilyId}/accountPositions",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.StatementFamilyAccountPositionsDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Account Positions by Statement Family Id

  Return all accounts and the positons within the account attached to a statement family.
  """
  @spec view_positions_by_statement_family_id_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyPositionsDigest.t()} | :error
  def view_positions_by_statement_family_id_v1_using_get(statementFamilyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [statementFamilyId: statementFamilyId],
      call: {ExAxos.AccountPositions, :view_positions_by_statement_family_id_v1_using_get},
      url: "/rest/account/v1/positionsByStatementFamily/#{statementFamilyId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.StatementFamilyPositionsDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  View Positions Detail

  The account positions api returns the current positions for an account.

  ## Options

    * `asOfDate`: asOfDate

  """
  @spec view_positions_detail_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountPositionDigest.t()} | :error
  def view_positions_detail_v1_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:asOfDate])

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountPositions, :view_positions_detail_v1_using_get},
      url: "/rest/account/v1/positions/#{accountNumber}",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.AccountPositionDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
