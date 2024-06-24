defmodule ExAxos.Schema.EnvelopeDefinition do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeDefinition
  """

  @type t :: %__MODULE__{
          brandId: String.t() | nil,
          compositeTemplates: [ExAxos.Schema.CompositeTemplate.t()] | nil,
          customFields: ExAxos.Schema.CustomFields.t() | nil,
          emailBlurb: String.t() | nil,
          emailSubject: String.t() | nil,
          messageLock: String.t() | nil,
          notification: ExAxos.Schema.Notification.t() | nil,
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
      compositeTemplates: [{ExAxos.Schema.CompositeTemplate, :t}],
      customFields: {ExAxos.Schema.CustomFields, :t},
      emailBlurb: {:string, :generic},
      emailSubject: {:string, :generic},
      messageLock: {:string, :generic},
      notification: {ExAxos.Schema.Notification, :t},
      recipientsLock: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
