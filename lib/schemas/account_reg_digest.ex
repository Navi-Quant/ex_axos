defmodule ExAxos.AccountRegDigest do
  @moduledoc """
  Provides struct and type for a AccountRegDigest
  """

  @type t :: %__MODULE__{
          brokerDealerCompanyName: String.t() | nil,
          businessPhoneNumber: String.t() | nil,
          dateOfBirth: String.t() | nil,
          directorCompanyName: String.t() | nil,
          emailAddress: String.t() | nil,
          employerAddressCity: String.t() | nil,
          employerAddressCountry: String.t() | nil,
          employerAddressLine1: String.t() | nil,
          employerAddressLine2: String.t() | nil,
          employerAddressStateCode: String.t() | nil,
          employerAddressZipCode: String.t() | nil,
          employerName: String.t() | nil,
          employmentStatus: String.t() | nil,
          firstName: String.t() | nil,
          homePhoneNumber: String.t() | nil,
          lastName: String.t() | nil,
          legalResidenceCountry: String.t() | nil,
          mailingAddressCity: String.t() | nil,
          mailingAddressCountry: String.t() | nil,
          mailingAddressLine1: String.t() | nil,
          mailingAddressLine2: String.t() | nil,
          mailingAddressStateCode: String.t() | nil,
          mailingAddressZipCode: String.t() | nil,
          maritalStatus: String.t() | nil,
          middleName: String.t() | nil,
          mobilePhoneNumber: String.t() | nil,
          numberOfDependents: integer | nil,
          occupation: String.t() | nil,
          physicalAddressCity: String.t() | nil,
          physicalAddressCountry: String.t() | nil,
          physicalAddressLine1: String.t() | nil,
          physicalAddressLine2: String.t() | nil,
          physicalAddressStateCode: String.t() | nil,
          physicalAddressZipCode: String.t() | nil,
          prefix: String.t() | nil,
          regNumber: integer | nil,
          suffix: String.t() | nil,
          taxId: String.t() | nil,
          taxIdType: String.t() | nil
        }

  defstruct [
    :brokerDealerCompanyName,
    :businessPhoneNumber,
    :dateOfBirth,
    :directorCompanyName,
    :emailAddress,
    :employerAddressCity,
    :employerAddressCountry,
    :employerAddressLine1,
    :employerAddressLine2,
    :employerAddressStateCode,
    :employerAddressZipCode,
    :employerName,
    :employmentStatus,
    :firstName,
    :homePhoneNumber,
    :lastName,
    :legalResidenceCountry,
    :mailingAddressCity,
    :mailingAddressCountry,
    :mailingAddressLine1,
    :mailingAddressLine2,
    :mailingAddressStateCode,
    :mailingAddressZipCode,
    :maritalStatus,
    :middleName,
    :mobilePhoneNumber,
    :numberOfDependents,
    :occupation,
    :physicalAddressCity,
    :physicalAddressCountry,
    :physicalAddressLine1,
    :physicalAddressLine2,
    :physicalAddressStateCode,
    :physicalAddressZipCode,
    :prefix,
    :regNumber,
    :suffix,
    :taxId,
    :taxIdType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brokerDealerCompanyName: {:string, :generic},
      businessPhoneNumber: {:string, :generic},
      dateOfBirth: {:string, :generic},
      directorCompanyName: {:string, :generic},
      emailAddress: {:string, :generic},
      employerAddressCity: {:string, :generic},
      employerAddressCountry: {:string, :generic},
      employerAddressLine1: {:string, :generic},
      employerAddressLine2: {:string, :generic},
      employerAddressStateCode: {:string, :generic},
      employerAddressZipCode: {:string, :generic},
      employerName: {:string, :generic},
      employmentStatus: {:string, :generic},
      firstName: {:string, :generic},
      homePhoneNumber: {:string, :generic},
      lastName: {:string, :generic},
      legalResidenceCountry: {:string, :generic},
      mailingAddressCity: {:string, :generic},
      mailingAddressCountry: {:string, :generic},
      mailingAddressLine1: {:string, :generic},
      mailingAddressLine2: {:string, :generic},
      mailingAddressStateCode: {:string, :generic},
      mailingAddressZipCode: {:string, :generic},
      maritalStatus: {:string, :generic},
      middleName: {:string, :generic},
      mobilePhoneNumber: {:string, :generic},
      numberOfDependents: :integer,
      occupation: {:string, :generic},
      physicalAddressCity: {:string, :generic},
      physicalAddressCountry: {:string, :generic},
      physicalAddressLine1: {:string, :generic},
      physicalAddressLine2: {:string, :generic},
      physicalAddressStateCode: {:string, :generic},
      physicalAddressZipCode: {:string, :generic},
      prefix: {:string, :generic},
      regNumber: :integer,
      suffix: {:string, :generic},
      taxId: {:string, :generic},
      taxIdType: {:string, :generic}
    ]
  end
end