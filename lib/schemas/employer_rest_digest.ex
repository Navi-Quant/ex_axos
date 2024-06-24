defmodule ExAxos.EmployerRestDigest do
  @moduledoc """
  Provides struct and type for a EmployerRestDigest
  """

  @type t :: %__MODULE__{employerId: String.t() | nil, name: String.t() | nil}

  defstruct [:employerId, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [employerId: {:string, :generic}, name: {:string, :generic}]
  end
end
