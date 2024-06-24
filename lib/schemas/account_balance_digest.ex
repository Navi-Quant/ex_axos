defmodule ExAxos.AccountBalanceDigest do
  @moduledoc """
  Provides struct and type for a AccountBalanceDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          asOfDate: String.t() | nil,
          currentCashBalance: number | nil,
          netChange: number | nil
        }

  defstruct [:accountName, :accountNumber, :asOfDate, :currentCashBalance, :netChange]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      asOfDate: {:string, :generic},
      currentCashBalance: :number,
      netChange: :number
    ]
  end
end
