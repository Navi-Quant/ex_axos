defmodule ExAxos.SalesforceCaseAPI do
  @moduledoc """
  Provides API endpoint related to salesforce case api
  """

  @default_client ExAxos.Client

  @doc """
  caseCreate
  """
  @spec case_create_using_post(ExAxos.SalesforceCaseRequest.t(), keyword) ::
          {:ok, ExAxos.SalesforceResponse.t()} | :error
  def case_create_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.SalesforceCaseAPI, :case_create_using_post},
      url: "/rest/salesforce/v1/case/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.SalesforceCaseRequest, :t}}],
      response: [
        {200, {ExAxos.SalesforceResponse, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
