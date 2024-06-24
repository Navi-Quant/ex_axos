defmodule ExAxos.EnvelopeDefinition do
  @moduledoc """
  Provides struct and type for a EnvelopeDefinition
  """

  @type t :: %__MODULE__{
          brandId: String.t() | nil,
          compositeTemplates: [ExAxos.CompositeTemplate.t()] | nil,
          customFields: ExAxos.CustomFields.t() | nil,
          emailBlurb: String.t() | nil,
          emailSubject: String.t() | nil,
          messageLock: String.t() | nil,
          notification: ExAxos.Notification.t() | nil,
          recipientsLock: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :brandId,
    :compositeTemplates,
    :customFields,
    :emailBlurb,
    :emailSubject,
    :messageLock,
    :notification,
    :recipientsLock,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      brandId: {:string, :generic},
      compositeTemplates: [{ExAxos.CompositeTemplate, :t}],
      customFields: {ExAxos.CustomFields, :t},
      emailBlurb: {:string, :generic},
      emailSubject: {:string, :generic},
      messageLock: {:string, :generic},
      notification: {ExAxos.Notification, :t},
      recipientsLock: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
