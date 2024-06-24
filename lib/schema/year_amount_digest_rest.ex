defmodule ExAxos.Schema.YearAmountDigestRest do
  @moduledoc """
  Provides struct and type for a Schema.YearAmountDigestRest
  """

  @type t :: %__MODULE__{amount: number | nil, year: integer | nil}

  defstruct [:amount, :year]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: :number, year: :integer]
  end
end
