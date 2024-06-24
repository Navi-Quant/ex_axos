defmodule ExAxos.PositionDigest do
  @moduledoc """
  Provides struct and type for a PositionDigest
  """

  @type t :: %__MODULE__{
          asOfDate: String.t() | nil,
          lastPrice: number | nil,
          marketValue: number | nil,
          model: ExAxos.ModelDigest.t() | nil,
          modelActualPercent: number | nil,
          price: number | nil,
          productId: String.t() | nil,
          quantity: number | nil,
          security: ExAxos.SecurityBasicDigest.t() | nil,
          tradeLots: [ExAxos.TradeLotDigest.t()] | nil,
          unrealizedGainLoss: number | nil
        }

  defstruct [
    :asOfDate,
    :lastPrice,
    :marketValue,
    :model,
    :modelActualPercent,
    :price,
    :productId,
    :quantity,
    :security,
    :tradeLots,
    :unrealizedGainLoss
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      asOfDate: {:string, :generic},
      lastPrice: :number,
      marketValue: :number,
      model: {ExAxos.ModelDigest, :t},
      modelActualPercent: :number,
      price: :number,
      productId: {:string, :generic},
      quantity: :number,
      security: {ExAxos.SecurityBasicDigest, :t},
      tradeLots: [{ExAxos.TradeLotDigest, :t}],
      unrealizedGainLoss: :number
    ]
  end
end
