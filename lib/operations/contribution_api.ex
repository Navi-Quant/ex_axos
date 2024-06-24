defmodule ExAxos.ContributionAPI do
  @moduledoc """
  Provides API endpoints related to contribution api
  """

  @default_client ExAxos.Client

  @doc """
  Create a contribution

  Provide a request to create a new contribution
  """
  @spec create_contribution_using_post(ExAxos.ContributionDigestRest.t(), keyword) ::
          {:ok, ExAxos.ContributionResponseResultDigest.t()} | :error
  def create_contribution_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.ContributionAPI, :create_contribution_using_post},
      url: "/rest/account/v1/contribution/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.ContributionDigestRest, :t}}],
      response: [
        {200, {ExAxos.ContributionResponseResultDigest, :t}},
        {201, {ExAxos.ContributionResponseResultDigest, :t}},
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
  @spec edit_contribution_using_post(ExAxos.ContributionDigestRest.t(), keyword) ::
          {:ok, ExAxos.ContributionResponseResultDigest.t()} | :error
  def edit_contribution_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.ContributionAPI, :edit_contribution_using_post},
      url: "/rest/account/v1/contribution/edit",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.ContributionDigestRest, :t}}],
      response: [
        {200, {ExAxos.ContributionResponseResultDigest, :t}},
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
  @spec get_contributions_using_get(String.t(), keyword) ::
          {:ok, ExAxos.ContributionResponseResultDigest.t()} | :error
  def get_contributions_using_get(accountId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountId: accountId],
      call: {ExAxos.ContributionAPI, :get_contributions_using_get},
      url: "/rest/account/v1/contributions/#{accountId}",
      method: :get,
      response: [
        {200, {ExAxos.ContributionResponseResultDigest, :t}},
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
  @spec suspend_contribution_using_put(ExAxos.ContributionSuspendRequest.t(), keyword) ::
          {:ok, ExAxos.ContributionResponseResultDigest.t()} | :error
  def suspend_contribution_using_put(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.ContributionAPI, :suspend_contribution_using_put},
      url: "/rest/account/v1/contribution/suspend",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.ContributionSuspendRequest, :t}}],
      response: [
        {200, {ExAxos.ContributionResponseResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
