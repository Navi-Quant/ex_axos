defmodule ExAxos.Schema.PositionDigest do
  @moduledoc """
  Provides struct and type for a Schema.PositionDigest
  """

  @type t :: %__MODULE__{
          asOfDate: String.t() | nil,
          lastPrice: number | nil,
          marketValue: number | nil,
          model: ExAxos.Schema.ModelDigest.t() | nil,
          modelActualPercent: number | nil,
          price: number | nil,
          productId: String.t() | nil,
          quantity: number | nil,
          security: ExAxos.Schema.SecurityBasicDigest.t() | nil,
          tradeLots: [ExAxos.Schema.TradeLotDigest.t()] | nil,
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
      model: {ExAxos.Schema.ModelDigest, :t},
      modelActualPercent: :number,
      price: :number,
      productId: {:string, :generic},
      quantity: :number,
      security: {ExAxos.Schema.SecurityBasicDigest, :t},
      tradeLots: [{ExAxos.Schema.TradeLotDigest, :t}],
      unrealizedGainLoss: :number
    ]
  end
end
