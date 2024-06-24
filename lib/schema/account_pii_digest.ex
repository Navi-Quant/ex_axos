defmodule ExAxos.Schema.AccountPIIDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountPIIDigest
  """

  @type t :: %__MODULE__{
          citizenshipStatus: String.t() | nil,
          expirationDate: String.t() | nil,
          idType: String.t() | nil,
          piiNumber: String.t() | nil,
          state: String.t() | nil
        }

  defstruct [:citizenshipStatus, :expirationDate, :idType, :piiNumber, :state]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      citizenshipStatus: {:string, :generic},
      expirationDate: {:string, :generic},
      idType: {:string, :generic},
      piiNumber: {:string, :generic},
      state: {:string, :generic}
    ]
  end
end
