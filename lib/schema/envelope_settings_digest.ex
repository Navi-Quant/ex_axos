defmodule ExAxos.Schema.EnvelopeSettingsDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeSettingsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          availableAccountForms: [ExAxos.Schema.EnvelopeAccountFormDigest.t()] | nil,
          availableAdvisorForms: [ExAxos.Schema.EnvelopeAccountFormDigest.t()] | nil,
          availableProposals: [ExAxos.Schema.EnvelopeProposalDigest.t()] | nil,
          availableRecipients: [ExAxos.Schema.EnvelopeRecipientDigest.t()] | nil,
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
      availableAccountForms: [{ExAxos.Schema.EnvelopeAccountFormDigest, :t}],
      availableAdvisorForms: [{ExAxos.Schema.EnvelopeAccountFormDigest, :t}],
      availableProposals: [{ExAxos.Schema.EnvelopeProposalDigest, :t}],
      availableRecipients: [{ExAxos.Schema.EnvelopeRecipientDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
