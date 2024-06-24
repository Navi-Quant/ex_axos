defmodule ExAxos.TotalReturnItemDigestRest do
  @moduledoc """
  Provides struct and type for a TotalReturnItemDigestRest
  """

  @type t :: %__MODULE__{
          changeInDeposits: number | nil,
          cumulativeTwr: number | nil,
          netDeposits: number | nil,
          periodDate: String.t() | nil,
          totalMarketValue: number | nil,
          totalReturnDollars: number | nil
        }

  defstruct [
    :changeInDeposits,
    :cumulativeTwr,
    :netDeposits,
    :periodDate,
    :totalMarketValue,
    :totalReturnDollars
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      changeInDeposits: :number,
      cumulativeTwr: :number,
      netDeposits: :number,
      periodDate: {:string, :generic},
      totalMarketValue: :number,
      totalReturnDollars: :number
    ]
  end
end
