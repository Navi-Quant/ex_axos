defmodule ExAxos.Schema.AccountDeliveryOptionsResponseDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountDeliveryOptionsResponseDigest
  """

  @type t :: %__MODULE__{
          deliveryOptions: [ExAxos.Schema.AccountDeliveryOptionsDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:deliveryOptions, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      deliveryOptions: [{ExAxos.Schema.AccountDeliveryOptionsDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
