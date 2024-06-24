defmodule ExAxos.Schema.ContactInformationDigest do
  @moduledoc """
  Provides struct and type for a Schema.ContactInformationDigest
  """

  @type t :: %__MODULE__{
          address: ExAxos.Schema.SimpleAddressDigest.t() | nil,
          advisorId: String.t() | nil,
          commissionPercent: number | nil,
          emailAddress: String.t() | nil,
          firm: ExAxos.Schema.FirmRestDigest.t() | nil,
          name1: String.t() | nil,
          name2: String.t() | nil,
          phones: [ExAxos.Schema.SimplePhoneRest.t()] | nil,
          receivesStatements: boolean | nil,
          repId: String.t() | nil,
          repOnStatement: boolean | nil
        }

  defstruct [
    :address,
    :advisorId,
    :commissionPercent,
    :emailAddress,
    :firm,
    :name1,
    :name2,
    :phones,
    :receivesStatements,
    :repId,
    :repOnStatement
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {ExAxos.Schema.SimpleAddressDigest, :t},
      advisorId: {:string, :generic},
      commissionPercent: :number,
      emailAddress: {:string, :generic},
      firm: {ExAxos.Schema.FirmRestDigest, :t},
      name1: {:string, :generic},
      name2: {:string, :generic},
      phones: [{ExAxos.Schema.SimplePhoneRest, :t}],
      receivesStatements: :boolean,
      repId: {:string, :generic},
      repOnStatement: :boolean
    ]
  end
end
