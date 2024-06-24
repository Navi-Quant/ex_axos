defmodule ExAxos.Schema.InterestedPartyRest2 do
  @moduledoc """
  Provides struct and type for a Schema.InterestedPartyRest2
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          address: ExAxos.Schema.AddressRest.t() | nil,
          id: integer | nil,
          name: String.t() | nil,
          phones: [ExAxos.Schema.PhoneRest.t()] | nil,
          statementFrequency: boolean | nil,
          taxForms: boolean | nil
        }

  defstruct [:accountNumber, :address, :id, :name, :phones, :statementFrequency, :taxForms]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      address: {ExAxos.Schema.AddressRest, :t},
      id: :integer,
      name: {:string, :generic},
      phones: [{ExAxos.Schema.PhoneRest, :t}],
      statementFrequency: :boolean,
      taxForms: :boolean
    ]
  end
end
