defmodule ExAxos.Schema.TrustedContactDigest do
  @moduledoc """
  Provides struct and type for a Schema.TrustedContactDigest
  """

  @type t :: %__MODULE__{
          email: String.t() | nil,
          emailValid: boolean | nil,
          emailValidationState: String.t() | nil,
          firstName: String.t() | nil,
          firstNameValid: boolean | nil,
          firstNameValidationState: String.t() | nil,
          id: integer | nil,
          lastName: String.t() | nil,
          lastNameValid: boolean | nil,
          lastNameValidationState: String.t() | nil,
          phoneCountryCode: String.t() | nil,
          phoneCountryCodeValid: boolean | nil,
          phoneCountryCodeValidationState: String.t() | nil,
          phoneNumber: String.t() | nil,
          phoneNumberCleaned: String.t() | nil,
          phoneNumberFormatted: String.t() | nil,
          phoneNumberValid: boolean | nil,
          phoneNumberValidationState: String.t() | nil,
          prefixDisplay: String.t() | nil,
          prefixType: String.t() | nil,
          prefixValid: boolean | nil,
          prefixValidationState: String.t() | nil,
          relationship: String.t() | nil,
          relationshipValid: boolean | nil,
          relationshipValidationState: String.t() | nil,
          suffixDisplay: String.t() | nil,
          suffixType: String.t() | nil,
          suffixValid: boolean | nil,
          suffixValidationState: String.t() | nil,
          valid: boolean | nil
        }

  defstruct [
    :email,
    :emailValid,
    :emailValidationState,
    :firstName,
    :firstNameValid,
    :firstNameValidationState,
    :id,
    :lastName,
    :lastNameValid,
    :lastNameValidationState,
    :phoneCountryCode,
    :phoneCountryCodeValid,
    :phoneCountryCodeValidationState,
    :phoneNumber,
    :phoneNumberCleaned,
    :phoneNumberFormatted,
    :phoneNumberValid,
    :phoneNumberValidationState,
    :prefixDisplay,
    :prefixType,
    :prefixValid,
    :prefixValidationState,
    :relationship,
    :relationshipValid,
    :relationshipValidationState,
    :suffixDisplay,
    :suffixType,
    :suffixValid,
    :suffixValidationState,
    :valid
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      email: {:string, :generic},
      emailValid: :boolean,
      emailValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      firstName: {:string, :generic},
      firstNameValid: :boolean,
      firstNameValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      id: :integer,
      lastName: {:string, :generic},
      lastNameValid: :boolean,
      lastNameValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      phoneCountryCode: {:string, :generic},
      phoneCountryCodeValid: :boolean,
      phoneCountryCodeValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      phoneNumber: {:string, :generic},
      phoneNumberCleaned: {:string, :generic},
      phoneNumberFormatted: {:string, :generic},
      phoneNumberValid: :boolean,
      phoneNumberValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      prefixDisplay: {:string, :generic},
      prefixType: {:enum, ["MR", "MRS", "AFG", "ATG"]},
      prefixValid: :boolean,
      prefixValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      relationship: {:string, :generic},
      relationshipValid: :boolean,
      relationshipValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      suffixDisplay: {:string, :generic},
      suffixType: {:enum, ["JR", "SR", "I", "II", "III", "IV", "V"]},
      suffixValid: :boolean,
      suffixValidationState:
        {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]},
      valid: :boolean
    ]
  end
end
