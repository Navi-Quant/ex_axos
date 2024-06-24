defmodule ExAxos.Schema.ElectronicSignatureEnvelopeDigest do
  @moduledoc """
  Provides struct and type for a Schema.ElectronicSignatureEnvelopeDigest
  """

  @type t :: %__MODULE__{
          accountForms: [ExAxos.Schema.EnvelopeAccountFormRequestDigest.t()] | nil,
          accountNumber: String.t() | nil,
          advisorTemplateIds: [String.t()] | nil,
          contributionDistributionId: integer | nil,
          documentStreams: [ExAxos.Schema.DocusignDocumentStreamDigest.t()] | nil,
          documents: [ExAxos.Schema.DocusignDocumentStreamDigest.t()] | nil,
          oneTimeContributionId: integer | nil,
          proposalIds: [integer] | nil,
          recipients: [ExAxos.Schema.EnvelopeRecipientRequestDigest.t()] | nil
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
      accountForms: [{ExAxos.Schema.EnvelopeAccountFormRequestDigest, :t}],
      accountNumber: {:string, :generic},
      advisorTemplateIds: [string: :generic],
      contributionDistributionId: :integer,
      documentStreams: [{ExAxos.Schema.DocusignDocumentStreamDigest, :t}],
      documents: [{ExAxos.Schema.DocusignDocumentStreamDigest, :t}],
      oneTimeContributionId: :integer,
      proposalIds: [:integer],
      recipients: [{ExAxos.Schema.EnvelopeRecipientRequestDigest, :t}]
    ]
  end
end
