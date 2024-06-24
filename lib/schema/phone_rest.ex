defmodule ExAxos.Schema.PhoneRest do
  @moduledoc """
  Provides struct and type for a Schema.PhoneRest
  """

  @type t :: %__MODULE__{phone: String.t() | nil, phoneType: String.t() | nil}

  defstruct [:phone, :phoneType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [phone: {:string, :generic}, phoneType: {:string, :generic}]
  end
end
