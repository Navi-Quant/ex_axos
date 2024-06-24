defmodule ExAxos.AccountMaintenance do
  @moduledoc """
  Provides API endpoints related to account maintenance
  """

  @default_client ExAxos.Client

  @doc """
  Create Account

  Create a new account in Advisor Services with the information provided. The account will be created with a status of pending.
  """
  @spec create_account(ExAxos.Schema.AccountGenerationDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountGenerationDigest.t()} | :error
  def create_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.AccountMaintenance, :create_account},
      url: "/rest/account/v1/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountGenerationDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Account

  Update an account in Advisor Services with the information provided.
  """
  @spec update_account(String.t(), ExAxos.Schema.AccountGenerationDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountGenerationDigest.t()} | :error
  def update_account(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountMaintenance, :update_account},
      url: "/rest/account/v1/edit/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountGenerationDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Account Beneficiaries

  For an existing Advisor Services Account, the beneficiaries can be added or removed.  To Remove beneficiaries from an account, simply send an empty array to the entry point.
  """
  @spec update_account_beneficiaries(
          String.t(),
          ExAxos.Schema.AccountGenerationDigest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.AccountMaintenanceUpdateResultDigest.t()} | :error
  def update_account_beneficiaries(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountMaintenance, :update_account_beneficiaries},
      url: "/rest/account/v1/edit/beneficiaries/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountMaintenanceUpdateResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Account Model

  For an existing Advisor Services Account, the models can be added or updated.
  """
  @spec update_account_model(String.t(), ExAxos.Schema.AccountGenerationDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountMaintenanceUpdateResultDigest.t()} | :error
  def update_account_model(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountMaintenance, :update_account_model},
      url: "/rest/account/v1/edit/models/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountMaintenanceUpdateResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Account Representatives

  For an existing Advisor Services Account, the representatives can be added, updated or removed.  To remove representatives, send an empty array of representatives.
  """
  @spec update_account_representatives(
          String.t(),
          ExAxos.Schema.AccountGenerationDigest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.AccountMaintenanceUpdateResultDigest.t()} | :error
  def update_account_representatives(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountMaintenance, :update_account_representatives},
      url: "/rest/account/v1/edit/representatives/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountMaintenanceUpdateResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Update Fees

  For an existing Advisor Services Account, the fees can be added or removed.  To Remove fees from an account, simply send an empty array to the entry point.
  """
  @spec update_fees(String.t(), ExAxos.Schema.AccountGenerationDigest.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountMaintenanceUpdateResultDigest.t()} | :error
  def update_fees(accountNumber, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, body: body],
      call: {ExAxos.AccountMaintenance, :update_fees},
      url: "/rest/account/v1/edit/fees/#{accountNumber}",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.AccountGenerationDigest, :t}}],
      response: [
        {200, {ExAxos.Schema.AccountMaintenanceUpdateResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
