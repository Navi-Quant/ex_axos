defmodule ExAxos.Schema.ModelDigest do
  @moduledoc """
  Provides struct and type for a Schema.ModelDigest
  """

  @type t :: %__MODULE__{
          code: String.t() | nil,
          description: String.t() | nil,
          endingBalance: number | nil,
          goalPercent: number | nil,
          id: integer | nil
        }

  defstruct [:code, :description, :endingBalance, :goalPercent, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      code: {:string, :generic},
      description: {:string, :generic},
      endingBalance: :number,
      goalPercent: :number,
      id: :integer
    ]
  end
end
