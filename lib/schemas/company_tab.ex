defmodule ExAxos.CompanyTab do
  @moduledoc """
  Provides struct and type for a CompanyTab
  """

  @type t :: %__MODULE__{
          anchorIgnoreIfNotPresent: String.t() | nil,
          anchorString: String.t() | nil,
          anchorUnits: String.t() | nil,
          anchorXOffset: String.t() | nil,
          anchorYOffset: String.t() | nil,
          bold: String.t() | nil,
          concealValueOnDocument: String.t() | nil,
          conditionalParentLabel: String.t() | nil,
          conditionalParentValue: String.t() | nil,
          disableAutoSize: String.t() | nil,
          documentId: String.t() | nil,
          font: String.t() | nil,
          fontColor: String.t() | nil,
          fontSize: String.t() | nil,
          italic: String.t() | nil,
          locked: String.t() | nil,
          maxLength: integer | nil,
          name: String.t() | nil,
          pageNumber: String.t() | nil,
          recipientId: String.t() | nil,
          required: String.t() | nil,
          tabId: String.t() | nil,
          tabLabel: String.t() | nil,
          underline: String.t() | nil,
          value: String.t() | nil,
          width: integer | nil,
          xPosition: String.t() | nil,
          yPosition: String.t() | nil
        }

  defstruct [
    :anchorIgnoreIfNotPresent,
    :anchorString,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :bold,
    :concealValueOnDocument,
    :conditionalParentLabel,
    :conditionalParentValue,
    :disableAutoSize,
    :documentId,
    :font,
    :fontColor,
    :fontSize,
    :italic,
    :locked,
    :maxLength,
    :name,
    :pageNumber,
    :recipientId,
    :required,
    :tabId,
    :tabLabel,
    :underline,
    :value,
    :width,
    :xPosition,
    :yPosition
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      anchorIgnoreIfNotPresent: {:string, :generic},
      anchorString: {:string, :generic},
      anchorUnits: {:string, :generic},
      anchorXOffset: {:string, :generic},
      anchorYOffset: {:string, :generic},
      bold: {:string, :generic},
      concealValueOnDocument: {:string, :generic},
      conditionalParentLabel: {:string, :generic},
      conditionalParentValue: {:string, :generic},
      disableAutoSize: {:string, :generic},
      documentId: {:string, :generic},
      font: {:string, :generic},
      fontColor: {:string, :generic},
      fontSize: {:string, :generic},
      italic: {:string, :generic},
      locked: {:string, :generic},
      maxLength: :integer,
      name: {:string, :generic},
      pageNumber: {:string, :generic},
      recipientId: {:string, :generic},
      required: {:string, :generic},
      tabId: {:string, :generic},
      tabLabel: {:string, :generic},
      underline: {:string, :generic},
      value: {:string, :generic},
      width: :integer,
      xPosition: {:string, :generic},
      yPosition: {:string, :generic}
    ]
  end
end
