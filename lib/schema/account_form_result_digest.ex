defmodule ExAxos.Schema.AccountFormResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountFormResultDigest
  """

  @type t :: %__MODULE__{
          code: String.t() | nil,
          description: String.t() | nil,
          name: String.t() | nil,
          required: boolean | nil
        }

  defstruct [:code, :description, :name, :required]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      code: {:string, :generic},
      description: {:string, :generic},
      name: {:string, :generic},
      required: :boolean
    ]
  end
end
