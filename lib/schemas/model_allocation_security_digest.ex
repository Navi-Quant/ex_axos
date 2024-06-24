defmodule ExAxos.ModelAllocationSecurityDigest do
  @moduledoc """
  Provides struct and type for a ModelAllocationSecurityDigest
  """

  @type t :: %__MODULE__{
          cusip: String.t() | nil,
          description: String.t() | nil,
          goalPercent: number | nil,
          symbol: String.t() | nil
        }

  defstruct [:cusip, :description, :goalPercent, :symbol]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cusip: {:string, :generic},
      description: {:string, :generic},
      goalPercent: :number,
      symbol: {:string, :generic}
    ]
  end
end
