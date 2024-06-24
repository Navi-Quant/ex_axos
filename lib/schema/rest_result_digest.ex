defmodule ExAxos.Schema.RestResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.RestResultDigest
  """

  @type t :: %__MODULE__{message: String.t() | nil, status: String.t() | nil}

  defstruct [:message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: {:string, :generic}, status: {:string, :generic}]
  end
end
