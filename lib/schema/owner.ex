defmodule ExAxos.Schema.Owner do
  @moduledoc """
  Provides struct and type for a Schema.Owner
  """

  @type t :: %__MODULE__{
          email: String.t() | nil,
          userId: String.t() | nil,
          userName: String.t() | nil
        }

  defstruct [:email, :userId, :userName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [email: {:string, :generic}, userId: {:string, :generic}, userName: {:string, :generic}]
  end
end
