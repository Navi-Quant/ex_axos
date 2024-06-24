defmodule ExAxos.StatementFamily do
  @moduledoc """
  Provides API endpoints related to statement family
  """

  @default_client ExAxos.Client

  @doc """
  Create Statement Family

  Creates a statement family
  """
  @spec create_statement_family(ExAxos.Schema.StatementFamilyEditDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def create_statement_family(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.StatementFamily, :create_statement_family},
      url: "/rest/statementFamily/v1/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.StatementFamilyEditDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.StatementFamilyResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Edit Statement Family

  Edits a statement family
  """
  @spec edit_statement_family(ExAxos.Schema.StatementFamilyEditDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def edit_statement_family(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.StatementFamily, :edit_statement_family},
      url: "/rest/statementFamily/v1/edit/",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.StatementFamilyEditDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.StatementFamilyResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Get Statement Family Details

  Retrieves statement family info
  """
  @spec get_statement_family_details(String.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def get_statement_family_details(statementFamilyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [statementFamilyId: statementFamilyId],
      call: {ExAxos.StatementFamily, :get_statement_family_details},
      url: "/rest/account/v1/statementFamily/#{statementFamilyId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.StatementFamilyResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Search Statement Families

  Searches for statement families matching search term
  """
  @spec search_statement_families(String.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def search_statement_families(statementFamilyName, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [statementFamilyName: statementFamilyName],
      call: {ExAxos.StatementFamily, :search_statement_families},
      url: "/rest/account/v1/statementFamily/search/#{statementFamilyName}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.StatementFamilyResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
