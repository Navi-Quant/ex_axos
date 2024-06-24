defmodule ExAxos.TrustedContactRest do
  @moduledoc """
  Provides struct and type for a TrustedContactRest
  """

  @type t :: %__MODULE__{
          email: String.t() | nil,
          firstName: String.t() | nil,
          id: integer | nil,
          lastName: String.t() | nil,
          phoneCountryCode: String.t() | nil,
          phoneNumber: String.t() | nil,
          phoneNumberCleaned: String.t() | nil,
          phoneNumberFormatted: String.t() | nil,
          prefixDisplay: String.t() | nil,
          prefixType: String.t() | nil,
          relationship: String.t() | nil,
          suffixDisplay: String.t() | nil,
          suffixType: String.t() | nil
        }

  defstruct [
    :email,
    :firstName,
    :id,
    :lastName,
    :phoneCountryCode,
    :phoneNumber,
    :phoneNumberCleaned,
    :phoneNumberFormatted,
    :prefixDisplay,
    :prefixType,
    :relationship,
    :suffixDisplay,
    :suffixType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      email: {:string, :generic},
      firstName: {:string, :generic},
      id: :integer,
      lastName: {:string, :generic},
      phoneCountryCode: {:string, :generic},
      phoneNumber: {:string, :generic},
      phoneNumberCleaned: {:string, :generic},
      phoneNumberFormatted: {:string, :generic},
      prefixDisplay: {:string, :generic},
      prefixType: {:enum, ["MR", "MRS", "AFG", "ATG"]},
      relationship: {:string, :generic},
      suffixDisplay: {:string, :generic},
      suffixType: {:enum, ["JR", "SR", "I", "II", "III", "IV", "V"]}
    ]
  end
end
