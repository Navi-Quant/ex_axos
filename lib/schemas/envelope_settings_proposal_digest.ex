defmodule ExAxos.EnvelopeSettingsProposalDigest do
  @moduledoc """
  Provides struct and type for a EnvelopeSettingsProposalDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          availableProposals: [ExAxos.EnvelopeProposalDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountNumber, :availableProposals, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      availableProposals: [{ExAxos.EnvelopeProposalDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
