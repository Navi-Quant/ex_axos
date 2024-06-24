defmodule ExAxos.AccountRmdAPI do
  @moduledoc """
  Provides API endpoint related to account rmd api
  """

  @default_client ExAxos.Client

  @doc """
  retrieveRmdSummary
  """
  @spec retrieve_rmd_summary_using_get(integer, keyword) ::
          {:ok, ExAxos.AccountRmdSummaryDigest.t()} | :error
  def retrieve_rmd_summary_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountRmdAPI, :retrieve_rmd_summary_using_get},
      url: "/rest/account/v1/rmd/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountRmdSummaryDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
