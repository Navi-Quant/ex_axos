defmodule ExAxos.Schema.AccountPendingTransactionResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountPendingTransactionResultDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          message: String.t() | nil,
          pendingTransactions: [ExAxos.Schema.AccountPendingTransactionDigest.t()] | nil,
          status: String.t() | nil
        }

  defstruct [:accountName, :accountNumber, :message, :pendingTransactions, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      message: {:string, :generic},
      pendingTransactions: [{ExAxos.Schema.AccountPendingTransactionDigest, :t}],
      status: {:string, :generic}
    ]
  end
end
