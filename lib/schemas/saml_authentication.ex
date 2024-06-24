defmodule ExAxos.SamlAuthentication do
  @moduledoc """
  Provides struct and types for a SamlAuthentication
  """

  @type t :: %__MODULE__{samlAssertionAttributes: [ExAxos.SamlAssertionAttribute.t()] | nil}

  defstruct [:samlAssertionAttributes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [samlAssertionAttributes: [{ExAxos.SamlAssertionAttribute, :t}]]
  end
end
