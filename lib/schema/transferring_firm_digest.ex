defmodule ExAxos.Schema.TransferringFirmDigest do
  @moduledoc """
  Provides struct and type for a Schema.TransferringFirmDigest
  """

  @type t :: %__MODULE__{
          firmAddress: ExAxos.Schema.SimpleAddressDigest.t() | nil,
          firmId: integer | nil,
          name: String.t() | nil
        }

  defstruct [:firmAddress, :firmId, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      firmAddress: {ExAxos.Schema.SimpleAddressDigest, :t},
      firmId: :integer,
      name: {:string, :generic}
    ]
  end
end
