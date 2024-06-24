defmodule ExAxos.AccountDeliveryOptionsDigest do
  @moduledoc """
  Provides struct and type for a AccountDeliveryOptionsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: integer | nil,
          deliveryFreq: String.t() | nil,
          deliveryMethod: String.t() | nil,
          documentType: String.t() | nil
        }

  defstruct [:accountNumber, :deliveryFreq, :deliveryMethod, :documentType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :integer,
      deliveryFreq: {:string, :generic},
      deliveryMethod: {:string, :generic},
      documentType: {:string, :generic}
    ]
  end
end
