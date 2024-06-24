defmodule ExAxos.Schema.CarbonCopy do
  @moduledoc """
  Provides struct and type for a Schema.CarbonCopy
  """

  @type t :: %__MODULE__{
          accessCode: String.t() | nil,
          addAccessCodeToEmail: String.t() | nil,
          clientUserId: String.t() | nil,
          customFields: [String.t()] | nil,
          declinedReason: String.t() | nil,
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
          phoneAuthentication: ExAxos.Schema.PhoneAuthentication.t() | nil,
          recipientAttachments: [ExAxos.Schema.RecipientAttachment.t()] | nil,
          recipientId: String.t() | nil,
          recipientIdGuid: String.t() | nil,
          requireIdLookup: String.t() | nil,
          roleName: String.t() | nil,
          routingOrder: String.t() | nil,
          samlAuthentication: ExAxos.Schema.SamlAuthentication.t() | nil,
          smsAuthentication: ExAxos.Schema.SmsAuthentication.t() | nil,
          socialAuthentications: [ExAxos.Schema.SocialAuthentication.t()] | nil,
          status: String.t() | nil,
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
    :phoneAuthentication,
    :recipientAttachments,
    :recipientId,
    :recipientIdGuid,
    :requireIdLookup,
    :roleName,
    :routingOrder,
    :samlAuthentication,
    :smsAuthentication,
    :socialAuthentications,
    :status,
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
      phoneAuthentication: {ExAxos.Schema.PhoneAuthentication, :t},
      recipientAttachments: [{ExAxos.Schema.RecipientAttachment, :t}],
      recipientId: {:string, :generic},
      recipientIdGuid: {:string, :generic},
      requireIdLookup: {:string, :generic},
      roleName: {:string, :generic},
      routingOrder: {:string, :generic},
      samlAuthentication: {ExAxos.Schema.SamlAuthentication, :t},
      smsAuthentication: {ExAxos.Schema.SmsAuthentication, :t},
      socialAuthentications: [{ExAxos.Schema.SocialAuthentication, :t}],
      status: {:string, :generic},
      templateLocked: {:string, :generic},
      templateRequired: {:string, :generic},
      userId: {:string, :generic}
    ]
  end
end
