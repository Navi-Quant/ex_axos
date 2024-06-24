defmodule ExAxos.Brands do
  @moduledoc """
  Provides struct and type for a Brands
  """

  @type t :: %__MODULE__{brands: [ExAxos.Brand.t()] | nil}

  defstruct [:brands]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [brands: [{ExAxos.Brand, :t}]]
  end
end
