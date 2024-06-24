defmodule ExAxos.AggInvestorUpdateRequest do
  @moduledoc """
  Provides struct and type for a AggInvestorUpdateRequest
  """

  @type t :: %__MODULE__{
          accountNumber: integer | nil,
          anyAccountNumber: boolean | nil,
          anyId: boolean | nil,
          anyInvestorGuid: boolean | nil,
          anyUserId: boolean | nil,
          heldAway: boolean | nil,
          id: integer | nil,
          investorGuid: String.t() | nil,
          trigger: String.t() | nil,
          userId: integer | nil,
          valid: boolean | nil
        }

  defstruct [
    :accountNumber,
    :anyAccountNumber,
    :anyId,
    :anyInvestorGuid,
    :anyUserId,
    :heldAway,
    :id,
    :investorGuid,
    :trigger,
    :userId,
    :valid
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :integer,
      anyAccountNumber: :boolean,
      anyId: :boolean,
      anyInvestorGuid: :boolean,
      anyUserId: :boolean,
      heldAway: :boolean,
      id: :integer,
      investorGuid: {:string, :generic},
      trigger: {:string, :generic},
      userId: :integer,
      valid: :boolean
    ]
  end
end
