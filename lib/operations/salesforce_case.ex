defmodule ExAxos.SalesforceCase do
  @moduledoc """
  Provides API endpoint related to salesforce case
  """

  @default_client ExAxos.Client

  @doc """
  caseCreate
  """
  @spec case_create_using_post(ExAxos.Schema.SalesforceCaseRequest.t(), keyword) ::
          {:ok, ExAxos.Schema.SalesforceResponse.t()} | :error
  def case_create_using_post(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {ExAxos.SalesforceCase, :case_create_using_post},
      url: "/rest/salesforce/v1/case/create",
      body: body,
      method: :post,
      request: [{"application/json", {ExAxos.Schema.SalesforceCaseRequest, :t}}],
      response: [
        {200, {ExAxos.Schema.SalesforceResponse, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
