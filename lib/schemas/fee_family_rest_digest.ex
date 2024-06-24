defmodule ExAxos.FeeFamilyRestDigest do
  @moduledoc """
  Provides struct and type for a FeeFamilyRestDigest
  """

  @type t :: %__MODULE__{
          accountRelationships: [ExAxos.AccountFeeFamilyRestDigest.t()] | nil,
          accountsCount: String.t() | nil,
          advisorId: integer | nil,
          familyName: String.t() | nil,
          feeScheduleCount: String.t() | nil,
          feeSchedules: [ExAxos.FeeScheduleRestDigest.t()] | nil,
          id: String.t() | nil
        }

  defstruct [
    :accountRelationships,
    :accountsCount,
    :advisorId,
    :familyName,
    :feeScheduleCount,
    :feeSchedules,
    :id
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountRelationships: [{ExAxos.AccountFeeFamilyRestDigest, :t}],
      accountsCount: {:string, :generic},
      advisorId: :integer,
      familyName: {:string, :generic},
      feeScheduleCount: {:string, :generic},
      feeSchedules: [{ExAxos.FeeScheduleRestDigest, :t}],
      id: {:string, :generic}
    ]
  end
end
