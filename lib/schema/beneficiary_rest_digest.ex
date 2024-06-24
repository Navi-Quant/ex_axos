defmodule ExAxos.Schema.BeneficiaryRestDigest do
  @moduledoc """
  Provides struct and type for a Schema.BeneficiaryRestDigest
  """

  @type t :: %__MODULE__{
          address: ExAxos.Schema.SimpleAddressDigest.t() | nil,
          beneficiaryId: String.t() | nil,
          birthDate: String.t() | nil,
          firstName: String.t() | nil,
          fullName: String.t() | nil,
          lastName: String.t() | nil,
          middleName: String.t() | nil,
          optionalFirstName: String.t() | nil,
          optionalFullName: String.t() | nil,
          optionalLastName: String.t() | nil,
          optionalMiddleName: String.t() | nil,
          phones: [ExAxos.Schema.SimplePhoneRest.t()] | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :address,
    :beneficiaryId,
    :birthDate,
    :firstName,
    :fullName,
    :lastName,
    :middleName,
    :optionalFirstName,
    :optionalFullName,
    :optionalLastName,
    :optionalMiddleName,
    :phones,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {ExAxos.Schema.SimpleAddressDigest, :t},
      beneficiaryId: {:string, :generic},
      birthDate: {:string, :generic},
      firstName: {:string, :generic},
      fullName: {:string, :generic},
      lastName: {:string, :generic},
      middleName: {:string, :generic},
      optionalFirstName: {:string, :generic},
      optionalFullName: {:string, :generic},
      optionalLastName: {:string, :generic},
      optionalMiddleName: {:string, :generic},
      phones: [{ExAxos.Schema.SimplePhoneRest, :t}],
      taxId: {:string, :generic}
    ]
  end
end
