defmodule ExAxos.AccountAssetsInTransfer do
  @moduledoc """
  Provides API endpoint related to account assets in transfer
  """

  @default_client ExAxos.Client

  @doc """
  Assets in Transfer

  Retrieves the detailed assets in transfer for an account
  """
  @spec assets_in_transfer(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountAssetsInTransferResultDigest.t()} | :error
  def assets_in_transfer(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountAssetsInTransfer, :assets_in_transfer},
      url: "/rest/account/v1/assetsInTransfer/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountAssetsInTransferResultDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
