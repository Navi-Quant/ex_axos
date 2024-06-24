defmodule ExAxos.RmdVO do
  @moduledoc """
  Provides struct and type for a RmdVO
  """

  @type t :: %__MODULE__{
          minimumDistribution: number | nil,
          remainingDistribution: number | nil,
          year: integer | nil
        }

  defstruct [:minimumDistribution, :remainingDistribution, :year]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [minimumDistribution: :number, remainingDistribution: :number, year: :integer]
  end
end
