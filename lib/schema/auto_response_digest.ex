defmodule ExAxos.Schema.AutoResponseDigest do
  @moduledoc """
  Provides struct and type for a Schema.AutoResponseDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          amount: String.t() | nil,
          id: String.t() | nil,
          messages: [ExAxos.Schema.ResponseErrorMessage.t()] | nil
        }

  defstruct [:accountNumber, :amount, :id, :messages]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      amount: {:string, :generic},
      id: {:string, :generic},
      messages: [{ExAxos.Schema.ResponseErrorMessage, :t}]
    ]
  end
end
