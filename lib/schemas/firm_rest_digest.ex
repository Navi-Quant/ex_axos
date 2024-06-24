defmodule ExAxos.FirmRestDigest do
  @moduledoc """
  Provides struct and type for a FirmRestDigest
  """

  @type t :: %__MODULE__{
          address: ExAxos.SimpleAddressDigest.t() | nil,
          firmId: String.t() | nil,
          name1: String.t() | nil,
          name2: String.t() | nil,
          phones: [ExAxos.SimplePhoneRest.t()] | nil,
          type: String.t() | nil
        }

  defstruct [:address, :firmId, :name1, :name2, :phones, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {ExAxos.SimpleAddressDigest, :t},
      firmId: {:string, :generic},
      name1: {:string, :generic},
      name2: {:string, :generic},
      phones: [{ExAxos.SimplePhoneRest, :t}],
      type: {:string, :generic}
    ]
  end
end
