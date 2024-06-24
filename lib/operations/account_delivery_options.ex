defmodule ExAxos.AccountDeliveryOptions do
  @moduledoc """
  Provides API endpoints related to account delivery options
  """

  @default_client ExAxos.Client

  @doc """
  retrieveDeliveryOptionsForAccount
  """
  @spec retrieve_delivery_options_for_account(String.t(), keyword) ::
          {:ok, ExAxos.Schema.AccountDeliveryOptionsResponseDigest.t()} | :error
  def retrieve_delivery_options_for_account(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.AccountDeliveryOptions, :retrieve_delivery_options_for_account},
      url: "/rest/account/v1/deliveryOptions/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.AccountDeliveryOptionsResponseDigest, :t}},
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
  @spec update_delivery_options_for_account(
          ExAxos.Schema.AccountDeliveryOptionsRequest.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.ResponseEntity.t()} | :error
  def update_delivery_options_for_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.AccountDeliveryOptions, :update_delivery_options_for_account},
      url: "/rest/account/v1/deliveryOptions",
      body: body,
      method: :put,
      request: [{"application/json", {ExAxos.Schema.AccountDeliveryOptionsRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.ResponseEntity, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
