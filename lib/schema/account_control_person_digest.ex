defmodule ExAxos.Schema.AccountControlPersonDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountControlPersonDigest
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
          message: String.t() | nil,
          middleInitial: String.t() | nil,
          passportID: String.t() | nil,
          passportIDExpirationDate: String.t() | nil,
          residentStatus: String.t() | nil,
          ssn: String.t() | nil,
          state: String.t() | nil,
          status: String.t() | nil,
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
    :message,
    :middleInitial,
    :passportID,
    :passportIDExpirationDate,
    :residentStatus,
    :ssn,
    :state,
    :status,
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
      message: {:string, :generic},
      middleInitial: {:string, :generic},
      passportID: {:string, :generic},
      passportIDExpirationDate: {:string, :generic},
      residentStatus: {:string, :generic},
      ssn: {:string, :generic},
      state: {:string, :generic},
      status: {:string, :generic},
      title: {:string, :generic},
      zipCode: {:string, :generic}
    ]
  end
end
