defmodule ExAxos.AccountSearchAccountDigest do
  @moduledoc """
  Provides struct and type for a AccountSearchAccountDigest
  """

  @type t :: %__MODULE__{
          accountStatus: String.t() | nil,
          accountValue: number | nil,
          address: ExAxos.SimpleAddressDigest.t() | nil,
          advisorId: integer | nil,
          dateCreated: String.t() | nil,
          dateOpened: String.t() | nil,
          emailAddress: String.t() | nil,
          firstName: String.t() | nil,
          lastName: String.t() | nil,
          middleName: String.t() | nil,
          name: String.t() | nil,
          number: String.t() | nil,
          priorAccountNumber: String.t() | nil,
          representativeId: integer | nil,
          representativeName: String.t() | nil,
          statementFamilyId: String.t() | nil,
          terminationDate: String.t() | nil,
          type: String.t() | nil,
          typeDescription: String.t() | nil
        }

  defstruct [
    :accountStatus,
    :accountValue,
    :address,
    :advisorId,
    :dateCreated,
    :dateOpened,
    :emailAddress,
    :firstName,
    :lastName,
    :middleName,
    :name,
    :number,
    :priorAccountNumber,
    :representativeId,
    :representativeName,
    :statementFamilyId,
    :terminationDate,
    :type,
    :typeDescription
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountStatus: {:string, :generic},
      accountValue: :number,
      address: {ExAxos.SimpleAddressDigest, :t},
      advisorId: :integer,
      dateCreated: {:string, :generic},
      dateOpened: {:string, :generic},
      emailAddress: {:string, :generic},
      firstName: {:string, :generic},
      lastName: {:string, :generic},
      middleName: {:string, :generic},
      name: {:string, :generic},
      number: {:string, :generic},
      priorAccountNumber: {:string, :generic},
      representativeId: :integer,
      representativeName: {:string, :generic},
      statementFamilyId: {:string, :generic},
      terminationDate: {:string, :generic},
      type: {:string, :generic},
      typeDescription: {:string, :generic}
    ]
  end
end
