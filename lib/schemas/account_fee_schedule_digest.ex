defmodule ExAxos.AccountFeeScheduleDigest do
  @moduledoc """
  Provides struct and type for a AccountFeeScheduleDigest
  """

  @type t :: %__MODULE__{
          feeScheduleId: String.t() | nil,
          modelIds: [String.t()] | nil,
          modelRelationType: String.t() | nil,
          paidByAccountNumber: String.t() | nil,
          paidByPercent: number | nil,
          representativeSplitPercent: number | nil
        }

  defstruct [
    :feeScheduleId,
    :modelIds,
    :modelRelationType,
    :paidByAccountNumber,
    :paidByPercent,
    :representativeSplitPercent
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      feeScheduleId: {:string, :generic},
      modelIds: [string: :generic],
      modelRelationType: {:string, :generic},
      paidByAccountNumber: {:string, :generic},
      paidByPercent: :number,
      representativeSplitPercent: :number
    ]
  end
end
