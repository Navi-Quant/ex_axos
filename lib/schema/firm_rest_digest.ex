defmodule ExAxos.Schema.FirmRestDigest do
  @moduledoc """
  Provides struct and type for a Schema.FirmRestDigest
  """

  @type t :: %__MODULE__{
          address: ExAxos.Schema.SimpleAddressDigest.t() | nil,
          firmId: String.t() | nil,
          name1: String.t() | nil,
          name2: String.t() | nil,
          phones: [ExAxos.Schema.SimplePhoneRest.t()] | nil,
          type: String.t() | nil
        }

  defstruct [:address, :firmId, :name1, :name2, :phones, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {ExAxos.Schema.SimpleAddressDigest, :t},
      firmId: {:string, :generic},
      name1: {:string, :generic},
      name2: {:string, :generic},
      phones: [{ExAxos.Schema.SimplePhoneRest, :t}],
      type: {:string, :generic}
    ]
  end
end
