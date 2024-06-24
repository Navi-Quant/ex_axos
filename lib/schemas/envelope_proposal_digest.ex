defmodule ExAxos.EnvelopeProposalDigest do
  @moduledoc """
  Provides struct and type for a EnvelopeProposalDigest
  """

  @type t :: %__MODULE__{
          investmentAmount: number | nil,
          name: String.t() | nil,
          proposalId: integer | nil
        }

  defstruct [:investmentAmount, :name, :proposalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [investmentAmount: :number, name: {:string, :generic}, proposalId: :integer]
  end
end
