defmodule ExAxos.AccountOwner do
  @moduledoc """
  Provides struct and type for a AccountOwner
  """

  @type t :: %__MODULE__{owners: [ExAxos.AccountRegDigest.t()] | nil}

  defstruct [:owners]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [owners: [{ExAxos.AccountRegDigest, :t}]]
  end
end
