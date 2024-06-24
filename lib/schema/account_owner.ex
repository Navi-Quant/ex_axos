defmodule ExAxos.Schema.AccountOwner do
  @moduledoc """
  Provides struct and type for a Schema.AccountOwner
  """

  @type t :: %__MODULE__{owners: [ExAxos.Schema.AccountRegDigest.t()] | nil}

  defstruct [:owners]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [owners: [{ExAxos.Schema.AccountRegDigest, :t}]]
  end
end
