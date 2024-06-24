defmodule ExAxos.SimpleAddressDigest do
  @moduledoc """
  Provides struct and type for a SimpleAddressDigest
  """

  @type t :: %__MODULE__{
          address1: String.t() | nil,
          address2: String.t() | nil,
          address3: String.t() | nil,
          city: String.t() | nil,
          state: String.t() | nil,
          zipCode: String.t() | nil
        }

  defstruct [:address1, :address2, :address3, :city, :state, :zipCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address1: {:string, :generic},
      address2: {:string, :generic},
      address3: {:string, :generic},
      city: {:string, :generic},
      state: {:string, :generic},
      zipCode: {:string, :generic}
    ]
  end
end
