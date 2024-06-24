defmodule ExAxos.Schema.RepresentativeGenerationDigest do
  @moduledoc """
  Provides struct and type for a Schema.RepresentativeGenerationDigest
  """

  @type t :: %__MODULE__{
          addressLine1: String.t() | nil,
          addressLine2: String.t() | nil,
          addressLine3: String.t() | nil,
          alternateNumber: String.t() | nil,
          city: String.t() | nil,
          crdNumber: String.t() | nil,
          createLibertyLogin: boolean | nil,
          emailAddress: String.t() | nil,
          firmId: integer | nil,
          name: String.t() | nil,
          optionalName: String.t() | nil,
          phoneNumber: String.t() | nil,
          phoneType: String.t() | nil,
          postalCode: String.t() | nil,
          state: String.t() | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :addressLine1,
    :addressLine2,
    :addressLine3,
    :alternateNumber,
    :city,
    :crdNumber,
    :createLibertyLogin,
    :emailAddress,
    :firmId,
    :name,
    :optionalName,
    :phoneNumber,
    :phoneType,
    :postalCode,
    :state,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      addressLine1: {:string, :generic},
      addressLine2: {:string, :generic},
      addressLine3: {:string, :generic},
      alternateNumber: {:string, :generic},
      city: {:string, :generic},
      crdNumber: {:string, :generic},
      createLibertyLogin: :boolean,
      emailAddress: {:string, :generic},
      firmId: :integer,
      name: {:string, :generic},
      optionalName: {:string, :generic},
      phoneNumber: {:string, :generic},
      phoneType: {:string, :generic},
      postalCode: {:string, :generic},
      state: {:string, :generic},
      taxId: {:string, :generic}
    ]
  end
end
