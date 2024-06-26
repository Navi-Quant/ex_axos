defmodule ExAxos.Schema.AccountPendingTransactionDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountPendingTransactionDigest
  """

  @type t :: %__MODULE__{
          actCode: String.t() | nil,
          amount: number | nil,
          cashBalance: number | nil,
          event: String.t() | nil,
          model: ExAxos.Schema.ModelDigest.t() | nil,
          quantity: number | nil,
          security: ExAxos.Schema.SecurityBasicDigest.t() | nil,
          tradeDate: String.t() | nil
        }

  defstruct [:actCode, :amount, :cashBalance, :event, :model, :quantity, :security, :tradeDate]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actCode: {:string, :generic},
      amount: :number,
      cashBalance: :number,
      event: {:string, :generic},
      model: {ExAxos.Schema.ModelDigest, :t},
      quantity: :number,
      security: {ExAxos.Schema.SecurityBasicDigest, :t},
      tradeDate: {:string, :generic}
    ]
  end
end
