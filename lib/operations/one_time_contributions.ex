defmodule ExAxos.OneTimeContributions do
  @moduledoc """
  Provides API endpoints related to one time contributions
  """

  @default_client ExAxos.Client

  @doc """
  Create a One-Time ACH Contribution for an account
  """
  @spec ach_using_post(ExAxos.Schema.ContributionAchRequest.t(), keyword) ::
          {:ok, ExAxos.Schema.AutoResponseDigest.t()} | :error
  def ach_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.OneTimeContributions, :ach_using_post},
      url: "/rest/oneTimeContribution/v1/ach",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.ContributionAchRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.AutoResponseDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Create a One-Time Contribution for an account

  Sending the same values several times will create additional entries for each request
  """
  @spec create_using_post(ExAxos.Schema.ContributionDigestRest.t(), keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def create_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.OneTimeContributions, :create_using_post},
      url: "/rest/oneTimeContribution/v1/create",
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
  Get One-Time Contributions for an account

  Retrieve a list of contributions
  """
  @spec list_all_for_account_using_get(integer, keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def list_all_for_account_using_get(accountId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountId: accountId],
      call: {ExAxos.OneTimeContributions, :list_all_for_account_using_get},
      url: "/rest/oneTimeContribution/v1/listAllForAccount/#{accountId}",
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
end
