defmodule ExAxos.Schema.AccountMaintenanceFeesDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountMaintenanceFeesDigest
  """

  @type t :: %__MODULE__{
          accountFeeFamily: ExAxos.Schema.AccountFeeFamilyRestDigest.t() | nil,
          accountFeeSchedules: [ExAxos.Schema.AccountFeeScheduleDigest.t()] | nil
        }

  defstruct [:accountFeeFamily, :accountFeeSchedules]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountFeeFamily: {ExAxos.Schema.AccountFeeFamilyRestDigest, :t},
      accountFeeSchedules: [{ExAxos.Schema.AccountFeeScheduleDigest, :t}]
    ]
  end
end
