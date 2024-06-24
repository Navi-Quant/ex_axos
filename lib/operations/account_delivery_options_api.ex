defmodule ExAxos.AccountDeliveryOptionsAPI do
  @moduledoc """
  Provides API endpoints related to account delivery options api
  """

  @default_client ExAxos.Client

  @doc """
  retrieveDeliveryOptionsForAccount
  """
  @spec retrieve_delivery_options_for_account_using_get(String.t(), keyword) ::
          {:ok, ExAxos.AccountDeliveryOptionsResponseDigest.t()} | :error
  def retrieve_delivery_options_for_account_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountDeliveryOptionsAPI, :retrieve_delivery_options_for_account_using_get},
      url: "/rest/account/v1/deliveryOptions/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.AccountDeliveryOptionsResponseDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  updateDeliveryOptionsForAccount
  """
  @spec update_delivery_options_for_account_using_put(
          ExAxos.AccountDeliveryOptionsRequest.t(),
          keyword
        ) :: {:ok, ExAxos.ResponseEntity.t()} | :error
  def update_delivery_options_for_account_using_put(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.AccountDeliveryOptionsAPI, :update_delivery_options_for_account_using_put},
      url: "/rest/account/v1/deliveryOptions",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.AccountDeliveryOptionsRequest, :t}}],
      response: [
        {200, {ExAxos.ResponseEntity, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
