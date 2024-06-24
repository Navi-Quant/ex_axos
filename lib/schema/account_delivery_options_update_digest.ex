defmodule ExAxos.Schema.AccountDeliveryOptionsUpdateDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountDeliveryOptionsUpdateDigest
  """

  @type t :: %__MODULE__{
          deliveryFreq: String.t() | nil,
          deliveryMethod: String.t() | nil,
          documentType: String.t() | nil
        }

  defstruct [:deliveryFreq, :deliveryMethod, :documentType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      deliveryFreq: {:string, :generic},
      deliveryMethod: {:string, :generic},
      documentType: {:string, :generic}
    ]
  end
end
