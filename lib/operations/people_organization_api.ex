defmodule ExAxos.PeopleOrganizationAPI do
  @moduledoc """
  Provides API endpoint related to people organization api
  """

  @default_client ExAxos.Client

  @doc """
  Update Person Organizations

  Update the person organizational information.
  """
  @spec update_person_organizations_using_get(
          String.t(),
          integer,
          String.t(),
          String.t(),
          String.t(),
          keyword
        ) :: {:ok, ExAxos.RequestStatus.t()} | :error
  def update_person_organizations_using_get(
        advisorId,
        personId,
        tenantId,
        userId,
        userType,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [
        advisorId: advisorId,
        personId: personId,
        tenantId: tenantId,
        userId: userId,
        userType: userType
      ],
      call: {ExAxos.PeopleOrganizationAPI, :update_person_organizations_using_get},
      url: "/rest/role/update/#{advisorId}/#{tenantId}/#{userType}/#{userId}/#{personId}",
      method: :get,
      response: [{200, {ExAxos.RequestStatus, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end
end
