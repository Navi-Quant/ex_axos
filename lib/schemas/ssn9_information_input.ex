defmodule ExAxos.Ssn9InformationInput do
  @moduledoc """
  Provides struct and types for a Ssn9InformationInput
  """

  @type t :: %__MODULE__{displayLevelCode: String.t() | nil, ssn9: String.t() | nil}

  defstruct [:displayLevelCode, :ssn9]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [displayLevelCode: {:string, :generic}, ssn9: {:string, :generic}]
  end
end
