defmodule ExAxos.AccountInterestedPartyResponseDigest do
  @moduledoc """
  Provides struct and type for a AccountInterestedPartyResponseDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          interestedParties: [ExAxos.InterestedPartySummaryDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil,
          todContingentBenes: [ExAxos.InterestedPartySummaryDigest.t()] | nil,
          todPrimaryBenes: [ExAxos.InterestedPartySummaryDigest.t()] | nil
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
      interestedParties: [{ExAxos.InterestedPartySummaryDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic},
      todContingentBenes: [{ExAxos.InterestedPartySummaryDigest, :t}],
      todPrimaryBenes: [{ExAxos.InterestedPartySummaryDigest, :t}]
    ]
  end
end
