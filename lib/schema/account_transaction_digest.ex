defmodule ExAxos.Schema.AccountTransactionDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountTransactionDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          transactions: [ExAxos.Schema.AccountTransactionDetailDigest.t()] | nil
        }

  defstruct [:accountName, :accountNumber, :transactions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      transactions: [{ExAxos.Schema.AccountTransactionDetailDigest, :t}]
    ]
  end
end
