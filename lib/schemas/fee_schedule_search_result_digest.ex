defmodule ExAxos.FeeScheduleSearchResultDigest do
  @moduledoc """
  Provides struct and type for a FeeScheduleSearchResultDigest
  """

  @type t :: %__MODULE__{
          feeSchedules: [ExAxos.FeeScheduleRestDigest.t()] | nil,
          feeSchedulesCount: integer | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:feeSchedules, :feeSchedulesCount, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      feeSchedules: [{ExAxos.FeeScheduleRestDigest, :t}],
      feeSchedulesCount: :integer,
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
