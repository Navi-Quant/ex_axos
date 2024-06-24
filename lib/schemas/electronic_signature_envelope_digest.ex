defmodule ExAxos.ElectronicSignatureEnvelopeDigest do
  @moduledoc """
  Provides struct and type for a ElectronicSignatureEnvelopeDigest
  """

  @type t :: %__MODULE__{
          accountForms: [ExAxos.EnvelopeAccountFormRequestDigest.t()] | nil,
          accountNumber: String.t() | nil,
          advisorTemplateIds: [String.t()] | nil,
          contributionDistributionId: integer | nil,
          documentStreams: [ExAxos.DocusignDocumentStreamDigest.t()] | nil,
          documents: [ExAxos.DocusignDocumentStreamDigest.t()] | nil,
          oneTimeContributionId: integer | nil,
          proposalIds: [integer] | nil,
          recipients: [ExAxos.EnvelopeRecipientRequestDigest.t()] | nil
        }

  defstruct [
    :accountForms,
    :accountNumber,
    :advisorTemplateIds,
    :contributionDistributionId,
    :documentStreams,
    :documents,
    :oneTimeContributionId,
    :proposalIds,
    :recipients
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountForms: [{ExAxos.EnvelopeAccountFormRequestDigest, :t}],
      accountNumber: {:string, :generic},
      advisorTemplateIds: [string: :generic],
      contributionDistributionId: :integer,
      documentStreams: [{ExAxos.DocusignDocumentStreamDigest, :t}],
      documents: [{ExAxos.DocusignDocumentStreamDigest, :t}],
      oneTimeContributionId: :integer,
      proposalIds: [:integer],
      recipients: [{ExAxos.EnvelopeRecipientRequestDigest, :t}]
    ]
  end
end
