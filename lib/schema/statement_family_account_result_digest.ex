defmodule ExAxos.Schema.StatementFamilyAccountResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.StatementFamilyAccountResultDigest
  """

  @type t :: %__MODULE__{
          accountType: String.t() | nil,
          name: String.t() | nil,
          number: String.t() | nil,
          primaryAccount: boolean | nil
        }

  defstruct [:accountType, :name, :number, :primaryAccount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountType: {:string, :generic},
      name: {:string, :generic},
      number: {:string, :generic},
      primaryAccount: :boolean
    ]
  end
end
