defmodule ExAxos.AccountAssetsInTransferAPI do
  @moduledoc """
  Provides API endpoint related to account assets in transfer api
  """

  @default_client ExAxos.Client

  @doc """
  Assets in Transfer

  Retrieves the detailed assets in transfer for an account
  """
  @spec view_assets_in_transfer_v1_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountAssetsInTransferResultDigest.t()} | :error
  def view_assets_in_transfer_v1_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountAssetsInTransferAPI, :view_assets_in_transfer_v1_using_get},
      url: "/rest/account/v1/assetsInTransfer/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountAssetsInTransferResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
