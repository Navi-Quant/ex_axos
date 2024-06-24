defmodule ExAxos.BulletinTradeDetailDigest do
  @moduledoc """
  Provides struct and type for a BulletinTradeDetailDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          instruction: String.t() | nil,
          lastPrice: number | nil,
          netCost: number | nil,
          otherFees: number | nil,
          security: String.t() | nil,
          shares: number | nil,
          symbol: String.t() | nil,
          tor: String.t() | nil,
          tradeFee: number | nil,
          tradeId: String.t() | nil
        }

  defstruct [
    :accountName,
    :accountNumber,
    :instruction,
    :lastPrice,
    :netCost,
    :otherFees,
    :security,
    :shares,
    :symbol,
    :tor,
    :tradeFee,
    :tradeId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      instruction: {:string, :generic},
      lastPrice: :number,
      netCost: :number,
      otherFees: :number,
      security: {:string, :generic},
      shares: :number,
      symbol: {:string, :generic},
      tor: {:string, :generic},
      tradeFee: :number,
      tradeId: {:string, :generic}
    ]
  end
end
