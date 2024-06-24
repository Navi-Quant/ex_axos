defmodule ExAxos.Schema.RiaModelDigest do
  @moduledoc """
  Provides struct and type for a Schema.RiaModelDigest
  """

  @type t :: %__MODULE__{
          abbreviation: String.t() | nil,
          description: String.t() | nil,
          id: integer | nil,
          modelType: ExAxos.Schema.ModelTypeDigest.t() | nil,
          representativeId: integer | nil
        }

  defstruct [:abbreviation, :description, :id, :modelType, :representativeId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      abbreviation: {:string, :generic},
      description: {:string, :generic},
      id: :integer,
      modelType: {ExAxos.Schema.ModelTypeDigest, :t},
      representativeId: :integer
    ]
  end
end
