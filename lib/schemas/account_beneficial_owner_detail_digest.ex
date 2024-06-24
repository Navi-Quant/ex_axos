defmodule ExAxos.AccountBeneficialOwnerDetailDigest do
  @moduledoc """
  Provides struct and type for a AccountBeneficialOwnerDetailDigest
  """

  @type t :: %__MODULE__{
          accountNumber: integer | nil,
          address: String.t() | nil,
          city: String.t() | nil,
          country: String.t() | nil,
          countryOfCitizenship: String.t() | nil,
          countryOfIssuancePassport: String.t() | nil,
          countryOfLegalResidence: String.t() | nil,
          dateOfBirth: String.t() | nil,
          firstName: String.t() | nil,
          foreignPostalCode: String.t() | nil,
          foreignProvince: String.t() | nil,
          idType: String.t() | nil,
          lastName: String.t() | nil,
          middleInitial: String.t() | nil,
          passportID: String.t() | nil,
          passportIDExpirationDate: String.t() | nil,
          percentageOfOwnership: number | nil,
          residentStatus: String.t() | nil,
          ssn: String.t() | nil,
          state: String.t() | nil,
          title: String.t() | nil,
          zipCode: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :address,
    :city,
    :country,
    :countryOfCitizenship,
    :countryOfIssuancePassport,
    :countryOfLegalResidence,
    :dateOfBirth,
    :firstName,
    :foreignPostalCode,
    :foreignProvince,
    :idType,
    :lastName,
    :middleInitial,
    :passportID,
    :passportIDExpirationDate,
    :percentageOfOwnership,
    :residentStatus,
    :ssn,
    :state,
    :title,
    :zipCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :integer,
      address: {:string, :generic},
      city: {:string, :generic},
      country: {:string, :generic},
      countryOfCitizenship: {:string, :generic},
      countryOfIssuancePassport: {:string, :generic},
      countryOfLegalResidence: {:string, :generic},
      dateOfBirth: {:string, :generic},
      firstName: {:string, :generic},
      foreignPostalCode: {:string, :generic},
      foreignProvince: {:string, :generic},
      idType: {:string, :generic},
      lastName: {:string, :generic},
      middleInitial: {:string, :generic},
      passportID: {:string, :generic},
      passportIDExpirationDate: {:string, :generic},
      percentageOfOwnership: :number,
      residentStatus: {:string, :generic},
      ssn: {:string, :generic},
      state: {:string, :generic},
      title: {:string, :generic},
      zipCode: {:string, :generic}
    ]
  end
end
