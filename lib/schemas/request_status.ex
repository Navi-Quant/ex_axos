defmodule ExAxos.RequestStatus do
  @moduledoc """
  Provides struct and type for a RequestStatus
  """

  @type t :: %__MODULE__{value: String.t() | nil}

  defstruct [:value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [value: {:string, :generic}]
  end
end
