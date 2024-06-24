defmodule ExAxos.Schema.AccountInterestedPartyResponseDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountInterestedPartyResponseDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          interestedParties: [ExAxos.Schema.InterestedPartySummaryDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil,
          todContingentBenes: [ExAxos.Schema.InterestedPartySummaryDigest.t()] | nil,
          todPrimaryBenes: [ExAxos.Schema.InterestedPartySummaryDigest.t()] | nil
        }

  defstruct [
    :accountNumber,
    :interestedParties,
    :message,
    :status,
    :todContingentBenes,
    :todPrimaryBenes
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      interestedParties: [{ExAxos.Schema.InterestedPartySummaryDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic},
      todContingentBenes: [{ExAxos.Schema.InterestedPartySummaryDigest, :t}],
      todPrimaryBenes: [{ExAxos.Schema.InterestedPartySummaryDigest, :t}]
    ]
  end
end
