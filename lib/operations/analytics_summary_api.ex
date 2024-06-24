defmodule ExAxos.AnalyticsSummaryAPI do
  @moduledoc """
  Provides API endpoint related to analytics summary api
  """

  @default_client ExAxos.Client

  @doc """
  Analytics Summary

  Retrieve summary analytics that pertains to the user's book of business.
  """
  @spec analytics_summary_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.FirmSearchResultDigest.t()} | :error
  def analytics_summary_v1_using_get(summaryType, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [summaryType: summaryType],
      call: {ExAxos.AnalyticsSummaryAPI, :analytics_summary_v1_using_get},
      url: "/rest/analytics/v1/analyticsSummary/#{summaryType}",
      method: :get,
      response: [
        {200, {ExAxos.FirmSearchResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
