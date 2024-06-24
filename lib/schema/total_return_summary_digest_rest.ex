defmodule ExAxos.Schema.TotalReturnSummaryDigestRest do
  @moduledoc """
  Provides struct and type for a Schema.TotalReturnSummaryDigestRest
  """

  @type t :: %__MODULE__{
          endDate: String.t() | nil,
          startDate: String.t() | nil,
          summaryType: String.t() | nil,
          timeWeightedReturn: number | nil
        }

  defstruct [:endDate, :startDate, :summaryType, :timeWeightedReturn]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      endDate: {:string, :generic},
      startDate: {:string, :generic},
      summaryType: {:string, :generic},
      timeWeightedReturn: :number
    ]
  end
end
