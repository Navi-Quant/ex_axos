defmodule ExAxos.Schema.ModelTypeDigest do
  @moduledoc """
  Provides struct and type for a Schema.ModelTypeDigest
  """

  @type t :: %__MODULE__{code: String.t() | nil, description: String.t() | nil}

  defstruct [:code, :description]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [code: {:string, :generic}, description: {:string, :generic}]
  end
end
