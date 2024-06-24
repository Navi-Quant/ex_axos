defmodule ExAxos.Schema.ModelAllocationModelDigest do
  @moduledoc """
  Provides struct and type for a Schema.ModelAllocationModelDigest
  """

  @type t :: %__MODULE__{
          abbreviation: String.t() | nil,
          allocationPercent: number | nil,
          description: String.t() | nil,
          modelId: String.t() | nil
        }

  defstruct [:abbreviation, :allocationPercent, :description, :modelId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      abbreviation: {:string, :generic},
      allocationPercent: :number,
      description: {:string, :generic},
      modelId: {:string, :generic}
    ]
  end
end
