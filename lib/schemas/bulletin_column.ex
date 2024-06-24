defmodule ExAxos.BulletinColumn do
  @moduledoc """
  Provides struct and type for a BulletinColumn
  """

  @type t :: %__MODULE__{
          name: String.t() | nil,
          numeric: boolean | nil,
          rightJustify: boolean | nil
        }

  defstruct [:name, :numeric, :rightJustify]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {:string, :generic}, numeric: :boolean, rightJustify: :boolean]
  end
end
