defmodule ExAxos.Schema.SalesforceCaseResponse do
  @moduledoc """
  Provides struct and type for a Schema.SalesforceCaseResponse
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          detailMessages: [ExAxos.Schema.ResponseErrorMessage.t()] | nil,
          documentId: String.t() | nil,
          documentName: String.t() | nil,
          parentSalesforceId: String.t() | nil,
          salesforceId: String.t() | nil,
          templateId: String.t() | nil,
          templateName: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :detailMessages,
    :documentId,
    :documentName,
    :parentSalesforceId,
    :salesforceId,
    :templateId,
    :templateName
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      detailMessages: [{ExAxos.Schema.ResponseErrorMessage, :t}],
      documentId: {:string, :generic},
      documentName: {:string, :generic},
      parentSalesforceId: {:string, :generic},
      salesforceId: {:string, :generic},
      templateId: {:string, :generic},
      templateName: {:string, :generic}
    ]
  end
end
