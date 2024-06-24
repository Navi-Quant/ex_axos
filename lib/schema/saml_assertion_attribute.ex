defmodule ExAxos.Schema.SamlAssertionAttribute do
  @moduledoc """
  Provides struct and types for a Schema.SamlAssertionAttribute
  """

  @type t :: %__MODULE__{name: String.t() | nil, value: String.t() | nil}

  defstruct [:name, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {:string, :generic}, value: {:string, :generic}]
  end
end
