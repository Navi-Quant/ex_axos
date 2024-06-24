defmodule ExAxos.AccountMaintenanceFeesDigest do
  @moduledoc """
  Provides struct and type for a AccountMaintenanceFeesDigest
  """

  @type t :: %__MODULE__{
          accountFeeFamily: ExAxos.AccountFeeFamilyRestDigest.t() | nil,
          accountFeeSchedules: [ExAxos.AccountFeeScheduleDigest.t()] | nil
        }

  defstruct [:accountFeeFamily, :accountFeeSchedules]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountFeeFamily: {ExAxos.AccountFeeFamilyRestDigest, :t},
      accountFeeSchedules: [{ExAxos.AccountFeeScheduleDigest, :t}]
    ]
  end
end
