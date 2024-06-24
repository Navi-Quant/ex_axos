defmodule ExAxos.OneTimeContributions do
  @moduledoc """
  Provides API endpoints related to one time contributions
  """

  @default_client ExAxos.Client

  @doc """
  Create a One-Time ACH Contribution for an account
  """
  @spec create_one_time_ach_contribution_for_account(
          ExAxos.Schema.ContributionAchRequest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.AutoResponseDigest.t()} | :error
  def create_one_time_ach_contribution_for_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.OneTimeContributions, :create_one_time_ach_contribution_for_account},
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
  @spec create_one_time_contribution_for_account(
          ExAxos.Schema.ContributionDigestRest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def create_one_time_contribution_for_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.OneTimeContributions, :create_one_time_contribution_for_account},
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
  @spec get_one_time_contributions_for_account(integer, keyword) ::
          {:ok, ExAxos.Schema.ContributionResponseResultDigest.t()} | :error
  def get_one_time_contributions_for_account(accountId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountId: accountId],
      call: {ExAxos.OneTimeContributions, :get_one_time_contributions_for_account},
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
