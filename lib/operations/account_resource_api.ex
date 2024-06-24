defmodule ExAxos.AccountResourceAPI do
  @moduledoc """
  Provides API endpoint related to account resource api
  """

  @default_client ExAxos.Client

  @doc """
  retrieveResource
  """
  @spec retrieve_resource_using_get(integer, String.t(), keyword) :: {:ok, String.t()} | :error
  def retrieve_resource_using_get(accountNumber, key, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, key: key],
      call: {ExAxos.AccountResourceAPI, :retrieve_resource_using_get},
      url: "/rest/account/v1/resource/#{accountNumber}/#{key}",
      method: :get,
      response: [{200, {:string, :generic}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end
end
