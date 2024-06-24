defmodule ExAxos.ContactInformationDigest do
  @moduledoc """
  Provides struct and type for a ContactInformationDigest
  """

  @type t :: %__MODULE__{
          address: ExAxos.SimpleAddressDigest.t() | nil,
          advisorId: String.t() | nil,
          commissionPercent: number | nil,
          emailAddress: String.t() | nil,
          firm: ExAxos.FirmRestDigest.t() | nil,
          name1: String.t() | nil,
          name2: String.t() | nil,
          phones: [ExAxos.SimplePhoneRest.t()] | nil,
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
      address: {ExAxos.SimpleAddressDigest, :t},
      advisorId: {:string, :generic},
      commissionPercent: :number,
      emailAddress: {:string, :generic},
      firm: {ExAxos.FirmRestDigest, :t},
      name1: {:string, :generic},
      name2: {:string, :generic},
      phones: [{ExAxos.SimplePhoneRest, :t}],
      receivesStatements: :boolean,
      repId: {:string, :generic},
      repOnStatement: :boolean
    ]
  end
end
