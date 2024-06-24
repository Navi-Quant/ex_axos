defmodule ExAxos.Schema.InterestedPartySummaryDigest do
  @moduledoc """
  Provides struct and type for a Schema.InterestedPartySummaryDigest
  """

  @type t :: %__MODULE__{
          address: ExAxos.Schema.SimpleAddressDigest.t() | nil,
          id: integer | nil,
          ipPercent: number | nil,
          name: String.t() | nil,
          phones: [ExAxos.Schema.SimplePhoneRest.t()] | nil,
          statementFrequency: String.t() | nil,
          taxForms: boolean | nil,
          todType: String.t() | nil,
          transactionConfirmations: boolean | nil,
          transferOnDeath: boolean | nil
        }

  defstruct [
    :address,
    :id,
    :ipPercent,
    :name,
    :phones,
    :statementFrequency,
    :taxForms,
    :todType,
    :transactionConfirmations,
    :transferOnDeath
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {ExAxos.Schema.SimpleAddressDigest, :t},
      id: :integer,
      ipPercent: :number,
      name: {:string, :generic},
      phones: [{ExAxos.Schema.SimplePhoneRest, :t}],
      statementFrequency: {:string, :generic},
      taxForms: :boolean,
      todType: {:enum, ["PRIMARY", "CONTINGENT"]},
      transactionConfirmations: :boolean,
      transferOnDeath: :boolean
    ]
  end
end
