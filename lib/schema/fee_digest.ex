defmodule ExAxos.Schema.FeeDigest do
  @moduledoc """
  Provides struct and type for a Schema.FeeDigest
  """

  @type t :: %__MODULE__{
          amount: number | nil,
          details: String.t() | nil,
          typeCode: String.t() | nil
        }

  defstruct [:amount, :details, :typeCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: :number, details: {:string, :generic}, typeCode: {:string, :generic}]
  end
end
