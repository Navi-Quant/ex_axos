defmodule ExAxos.Contribution do
  @moduledoc """
  Provides API endpoints related to contribution
  """

  @default_client ExAxos.Client

  @doc """
  Create a contribution

  Provide a request to create a new contribution
  """
  @spec create_contribution(ExAxos.Schema.ContributionDigestRest.t(), keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def create_contribution(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.Contribution, :create_contribution},
      url: "/rest/account/v1/contribution/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.ContributionDigestRest, :t}}],
      response: [
        {200, {ExAxos.Schema.ContributionResponseResultDigest, :t}},
        {201, {ExAxos.Schema.ContributionResponseResultDigest, :t}},
        {400, :null},
        {401, :null},
        {403, :null},
        {404, :null},
        {500, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Edit a contribution

  Provide a request to edit a contribution
  """
  @spec edit_contribution(ExAxos.Schema.ContributionDigestRest.t(), keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def edit_contribution(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.Contribution, :edit_contribution},
      url: "/rest/account/v1/contribution/edit",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.ContributionDigestRest, :t}}],
      response: [
        {200, {ExAxos.Schema.ContributionResponseResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of account contributions

  You must be associated to the account
  """
  @spec get_list_of_account_contributions(String.t(), keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def get_list_of_account_contributions(accountId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountId: accountId],
      call: {ExAxos.Contribution, :get_list_of_account_contributions},
      url: "/rest/account/v1/contributions/#{accountId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.ContributionResponseResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Suspend a contribution

  Initiate a request to suspend a contribution
  """
  @spec suspend_contribution(ExAxos.Schema.ContributionSuspendRequest.t(), keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def suspend_contribution(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.Contribution, :suspend_contribution},
      url: "/rest/account/v1/contribution/suspend",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.Schema.ContributionSuspendRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.ContributionResponseResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
