defmodule ExAxos.Schema.AccountDeliveryOptionsRequest do
  @moduledoc """
  Provides struct and type for a Schema.AccountDeliveryOptionsRequest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          deliveryOptionsUpdates: [ExAxos.Schema.AccountDeliveryOptionsUpdateDigest.t()] | nil
        }

  defstruct [:accountNumber, :deliveryOptionsUpdates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      deliveryOptionsUpdates: [{ExAxos.Schema.AccountDeliveryOptionsUpdateDigest, :t}]
    ]
  end
end
