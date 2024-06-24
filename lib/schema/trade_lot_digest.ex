defmodule ExAxos.Schema.TradeLotDigest do
  @moduledoc """
  Provides struct and type for a Schema.TradeLotDigest
  """

  @type t :: %__MODULE__{
          availableToTrade: number | nil,
          availableToTransfer: number | nil,
          costBasis: number | nil,
          goalPercent: number | nil,
          marketValue: number | nil,
          number: integer | nil,
          quantity: number | nil,
          tradeLotDate: String.t() | nil,
          unrealizedGainLoss: number | nil,
          unrealizedLongTermGainLoss: number | nil,
          unrealizedShortTermGainLoss: number | nil
        }

  defstruct [
    :availableToTrade,
    :availableToTransfer,
    :costBasis,
    :goalPercent,
    :marketValue,
    :number,
    :quantity,
    :tradeLotDate,
    :unrealizedGainLoss,
    :unrealizedLongTermGainLoss,
    :unrealizedShortTermGainLoss
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      availableToTrade: :number,
      availableToTransfer: :number,
      costBasis: :number,
      goalPercent: :number,
      marketValue: :number,
      number: :integer,
      quantity: :number,
      tradeLotDate: {:string, :generic},
      unrealizedGainLoss: :number,
      unrealizedLongTermGainLoss: :number,
      unrealizedShortTermGainLoss: :number
    ]
  end
end
