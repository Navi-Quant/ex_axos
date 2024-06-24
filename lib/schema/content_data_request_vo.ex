defmodule ExAxos.Schema.ContentDataRequestVO do
  @moduledoc """
  Provides struct and type for a Schema.ContentDataRequestVO
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          documentId: String.t() | nil,
          documentName: String.t() | nil,
          fileContent: String.t() | nil,
          hostStatus: String.t() | nil,
          templateId: String.t() | nil,
          templateName: String.t() | nil
        }

  defstruct [
    :accountNumber,
    :documentId,
    :documentName,
    :fileContent,
    :hostStatus,
    :templateId,
    :templateName
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      documentId: {:string, :generic},
      documentName: {:string, :generic},
      fileContent: {:string, :generic},
      hostStatus: {:string, :generic},
      templateId: {:string, :generic},
      templateName: {:string, :generic}
    ]
  end
end
