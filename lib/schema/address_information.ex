defmodule ExAxos.Schema.AddressInformation do
  @moduledoc """
  Provides struct and types for a Schema.AddressInformation
  """

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          fax: String.t() | nil,
          phone: String.t() | nil,
          state: String.t() | nil,
          street1: String.t() | nil,
          street2: String.t() | nil,
          zip: String.t() | nil,
          zipPlus4: String.t() | nil
        }

  defstruct [:city, :country, :fax, :phone, :state, :street1, :street2, :zip, :zipPlus4]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      city: {:string, :generic},
      country: {:string, :generic},
      fax: {:string, :generic},
      phone: {:string, :generic},
      state: {:string, :generic},
      street1: {:string, :generic},
      street2: {:string, :generic},
      zip: {:string, :generic},
      zipPlus4: {:string, :generic}
    ]
  end
end
