defmodule ExAxos.Brand do
  @moduledoc """
  Provides struct and type for a Brand
  """

  @type t :: %__MODULE__{brandId: String.t() | nil, brandName: String.t() | nil}

  defstruct [:brandId, :brandName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [brandId: {:string, :generic}, brandName: {:string, :generic}]
  end
end
