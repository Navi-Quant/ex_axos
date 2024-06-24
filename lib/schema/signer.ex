defmodule ExAxos.Schema.Signer do
  @moduledoc """
  Provides struct and type for a Schema.Signer
  """

  @type t :: %__MODULE__{
          accessCode: String.t() | nil,
          addAccessCodeToEmail: String.t() | nil,
          clientUserId: String.t() | nil,
          customFields: [String.t()] | nil,
          declinedReason: String.t() | nil,
          defaultRecipient: String.t() | nil,
          deliveredDateTime: String.t() | nil,
          deliveryMethod: String.t() | nil,
          email: String.t() | nil,
          emailNotification: ExAxos.Schema.EmailNotification.t() | nil,
          emailRecipientPostSigningURL: String.t() | nil,
          embeddedRecipientStartURL: String.t() | nil,
          excludedDocuments: [String.t()] | nil,
          idCheckConfigurationName: String.t() | nil,
          idCheckInformationInput: ExAxos.Schema.IdCheckInformationInput.t() | nil,
          inheritEmailNotificationConfiguration: String.t() | nil,
          name: String.t() | nil,
          note: String.t() | nil,
          offlineAttributes: ExAxos.Schema.OfflineAttributes.t() | nil,
          phoneAuthentication: ExAxos.Schema.PhoneAuthentication.t() | nil,
          recipientAttachments: [ExAxos.Schema.RecipientAttachment.t()] | nil,
          recipientId: String.t() | nil,
          recipientIdGuid: String.t() | nil,
          requireIdLookup: String.t() | nil,
          requireSignOnPaper: String.t() | nil,
          requireSignerCertificate: String.t() | nil,
          roleName: String.t() | nil,
          routingOrder: String.t() | nil,
          samlAuthentication: ExAxos.Schema.SamlAuthentication.t() | nil,
          signInEachLocation: String.t() | nil,
          signatureInfo: ExAxos.Schema.SignatureInfo.t() | nil,
          signedDateTime: String.t() | nil,
          smsAuthentication: ExAxos.Schema.SmsAuthentication.t() | nil,
          socialAuthentications: [ExAxos.Schema.SocialAuthentication.t()] | nil,
          status: String.t() | nil,
          tabs: ExAxos.Schema.Tabs.t() | nil,
          templateLocked: String.t() | nil,
          templateRequired: String.t() | nil,
          userId: String.t() | nil
        }

  defstruct [
    :accessCode,
    :addAccessCodeToEmail,
    :clientUserId,
    :customFields,
    :declinedReason,
    :defaultRecipient,
    :deliveredDateTime,
    :deliveryMethod,
    :email,
    :emailNotification,
    :emailRecipientPostSigningURL,
    :embeddedRecipientStartURL,
    :excludedDocuments,
    :idCheckConfigurationName,
    :idCheckInformationInput,
    :inheritEmailNotificationConfiguration,
    :name,
    :note,
    :offlineAttributes,
    :phoneAuthentication,
    :recipientAttachments,
    :recipientId,
    :recipientIdGuid,
    :requireIdLookup,
    :requireSignOnPaper,
    :requireSignerCertificate,
    :roleName,
    :routingOrder,
    :samlAuthentication,
    :signInEachLocation,
    :signatureInfo,
    :signedDateTime,
    :smsAuthentication,
    :socialAuthentications,
    :status,
    :tabs,
    :templateLocked,
    :templateRequired,
    :userId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accessCode: {:string, :generic},
      addAccessCodeToEmail: {:string, :generic},
      clientUserId: {:string, :generic},
      customFields: [string: :generic],
      declinedReason: {:string, :generic},
      defaultRecipient: {:string, :generic},
      deliveredDateTime: {:string, :generic},
      deliveryMethod: {:string, :generic},
      email: {:string, :generic},
      emailNotification: {ExAxos.Schema.EmailNotification, :t},
      emailRecipientPostSigningURL: {:string, :generic},
      embeddedRecipientStartURL: {:string, :generic},
      excludedDocuments: [string: :generic],
      idCheckConfigurationName: {:string, :generic},
      idCheckInformationInput: {ExAxos.Schema.IdCheckInformationInput, :t},
      inheritEmailNotificationConfiguration: {:string, :generic},
      name: {:string, :generic},
      note: {:string, :generic},
      offlineAttributes: {ExAxos.Schema.OfflineAttributes, :t},
      phoneAuthentication: {ExAxos.Schema.PhoneAuthentication, :t},
      recipientAttachments: [{ExAxos.Schema.RecipientAttachment, :t}],
      recipientId: {:string, :generic},
      recipientIdGuid: {:string, :generic},
      requireIdLookup: {:string, :generic},
      requireSignOnPaper: {:string, :generic},
      requireSignerCertificate: {:string, :generic},
      roleName: {:string, :generic},
      routingOrder: {:string, :generic},
      samlAuthentication: {ExAxos.Schema.SamlAuthentication, :t},
      signInEachLocation: {:string, :generic},
      signatureInfo: {ExAxos.Schema.SignatureInfo, :t},
      signedDateTime: {:string, :generic},
      smsAuthentication: {ExAxos.Schema.SmsAuthentication, :t},
      socialAuthentications: [{ExAxos.Schema.SocialAuthentication, :t}],
      status: {:string, :generic},
      tabs: {ExAxos.Schema.Tabs, :t},
      templateLocked: {:string, :generic},
      templateRequired: {:string, :generic},
      userId: {:string, :generic}
    ]
  end
end