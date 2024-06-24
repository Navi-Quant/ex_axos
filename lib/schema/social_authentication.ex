defmodule ExAxos.Schema.SocialAuthentication do
  @moduledoc """
  Provides struct and types for a Schema.SocialAuthentication
  """

  @type t :: %__MODULE__{authentication: String.t() | nil}

  defstruct [:authentication]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [authentication: {:string, :generic}]
  end
end
