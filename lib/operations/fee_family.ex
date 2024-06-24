defmodule ExAxos.FeeFamily do
  @moduledoc """
  Provides API endpoints related to fee family
  """

  @default_client ExAxos.Client

  @doc """
  Fee Family Lookup

  Retrieve detailed information that pertains to the fee family specified.
  """
  @spec fee_family_lookup(String.t(), keyword) ::
          {:ok, ExAxos.Schema.FeeFamilyRestDigest.t()} | :error
  def fee_family_lookup(feeFamilyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [feeFamilyId: feeFamilyId],
      call: {ExAxos.FeeFamily, :fee_family_lookup},
      url: "/rest/fee/v1/feeFamily/#{feeFamilyId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.FeeFamilyRestDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Fee Schedule Lookup

  Retrieve detailed information that pertains to the fee schedule specified.
  """
  @spec fee_schedule_lookup(String.t(), keyword) ::
          {:ok, ExAxos.Schema.FeeFamilyRestDigest.t()} | :error
  def fee_schedule_lookup(feeScheduleId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [feeScheduleId: feeScheduleId],
      call: {ExAxos.FeeFamily, :fee_schedule_lookup},
      url: "/rest/fee/v1/feeSchedule/#{feeScheduleId}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.FeeFamilyRestDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Fetch Fee Families

  Retrieve a list of Fee Families.

  ## Options

    * `search`: search

  """
  @spec fetch_fee_families(keyword) ::
          {:ok, ExAxos.Schema.FeeFamilySearchResultDigest.t()} | :error
  def fetch_fee_families(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:search])

    client.request(%{
      args: [],
      call: {ExAxos.FeeFamily, :fetch_fee_families},
      url: "/rest/fee/v1/feeFamilies",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.FeeFamilySearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Fetch Fee Schedules

  Retrieve a list of all Fee Schedules

  ## Options

    * `excludeFeesForFamilyId`: excludeFeesForFamilyId

  """
  @spec fetch_fee_schedules(keyword) ::
          {:ok, ExAxos.Schema.FeeScheduleSearchResultDigest.t()} | :error
  def fetch_fee_schedules(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:excludeFeesForFamilyId])

    client.request(%{
      args: [],
      call: {ExAxos.FeeFamily, :fetch_fee_schedules},
      url: "/rest/fee/v1/feeSchedules",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.FeeScheduleSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Fetch Fee Schedules For Account Type

  Retrieve a list of all Fee Schedules for a specific Account Type
  """
  @spec fetch_fee_schedules_for_account_type(String.t(), keyword) ::
          {:ok, ExAxos.Schema.FeeScheduleSearchResultDigest.t()} | :error
  def fetch_fee_schedules_for_account_type(accountType, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountType: accountType],
      call: {ExAxos.FeeFamily, :fetch_fee_schedules_for_account_type},
      url: "/rest/fee/v1/feeSchedules/accountType/#{accountType}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.FeeScheduleSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
