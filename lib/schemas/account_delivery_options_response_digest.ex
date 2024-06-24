defmodule ExAxos.AccountDeliveryOptionsResponseDigest do
  @moduledoc """
  Provides struct and type for a AccountDeliveryOptionsResponseDigest
  """

  @type t :: %__MODULE__{
          deliveryOptions: [ExAxos.AccountDeliveryOptionsDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:deliveryOptions, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      deliveryOptions: [{ExAxos.AccountDeliveryOptionsDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
