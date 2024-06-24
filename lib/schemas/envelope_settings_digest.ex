defmodule ExAxos.EnvelopeSettingsDigest do
  @moduledoc """
  Provides struct and type for a EnvelopeSettingsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          availableAccountForms: [ExAxos.EnvelopeAccountFormDigest.t()] | nil,
          availableAdvisorForms: [ExAxos.EnvelopeAccountFormDigest.t()] | nil,
          availableProposals: [ExAxos.EnvelopeProposalDigest.t()] | nil,
          availableRecipients: [ExAxos.EnvelopeRecipientDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :availableAccountForms,
    :availableAdvisorForms,
    :availableProposals,
    :availableRecipients,
    :message,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      availableAccountForms: [{ExAxos.EnvelopeAccountFormDigest, :t}],
      availableAdvisorForms: [{ExAxos.EnvelopeAccountFormDigest, :t}],
      availableProposals: [{ExAxos.EnvelopeProposalDigest, :t}],
      availableRecipients: [{ExAxos.EnvelopeRecipientDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
