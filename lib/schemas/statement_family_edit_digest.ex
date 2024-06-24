defmodule ExAxos.StatementFamilyEditDigest do
  @moduledoc """
  Provides struct and type for a StatementFamilyEditDigest
  """

  @type t :: %__MODULE__{
          accounts: [String.t()] | nil,
          familyName: String.t() | nil,
          familyNumber: String.t() | nil,
          primaryAccountNumber: String.t() | nil
        }

  defstruct [:accounts, :familyName, :familyNumber, :primaryAccountNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accounts: [string: :generic],
      familyName: {:string, :generic},
      familyNumber: {:string, :generic},
      primaryAccountNumber: {:string, :generic}
    ]
  end
end
