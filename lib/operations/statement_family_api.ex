defmodule ExAxos.StatementFamilyAPI do
  @moduledoc """
  Provides API endpoints related to statement family api
  """

  @default_client ExAxos.Client

  @doc """
  Create Statement Family

  Creates a statement family
  """
  @spec create_statement_family_using_post(ExAxos.Schema.StatementFamilyEditDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def create_statement_family_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.StatementFamilyAPI, :create_statement_family_using_post},
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
  @spec edit_statement_family_details_using_post(
          ExAxos.Schema.StatementFamilyEditDigest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def edit_statement_family_details_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.StatementFamilyAPI, :edit_statement_family_details_using_post},
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
  @spec get_statement_family_details_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def get_statement_family_details_using_get(statementFamilyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [statementFamilyId: statementFamilyId],
      call: {ExAxos.StatementFamilyAPI, :get_statement_family_details_using_get},
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
  @spec search_statement_families_using_get(String.t(), keyword) ::
          {:ok, ExAxos.Schema.StatementFamilyResultDigest.t()} | :error
  def search_statement_families_using_get(statementFamilyName, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [statementFamilyName: statementFamilyName],
      call: {ExAxos.StatementFamilyAPI, :search_statement_families_using_get},
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
