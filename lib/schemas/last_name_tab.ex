defmodule ExAxos.LastNameTab do
  @moduledoc """
  Provides struct and type for a LastNameTab
  """

  @type t :: %__MODULE__{
          anchorIgnoreIfNotPresent: String.t() | nil,
          anchorString: String.t() | nil,
          anchorUnits: String.t() | nil,
          anchorXOffset: String.t() | nil,
          anchorYOffset: String.t() | nil,
          bold: String.t() | nil,
          conditionalParentLabel: String.t() | nil,
          conditionalParentValue: String.t() | nil,
          documentId: String.t() | nil,
          font: String.t() | nil,
          fontColor: String.t() | nil,
          fontSize: String.t() | nil,
          italic: String.t() | nil,
          name: String.t() | nil,
          pageNumber: String.t() | nil,
          recipientId: String.t() | nil,
          tabId: String.t() | nil,
          tabLabel: String.t() | nil,
          underline: String.t() | nil,
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
    :conditionalParentLabel,
    :conditionalParentValue,
    :documentId,
    :font,
    :fontColor,
    :fontSize,
    :italic,
    :name,
    :pageNumber,
    :recipientId,
    :tabId,
    :tabLabel,
    :underline,
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
      conditionalParentLabel: {:string, :generic},
      conditionalParentValue: {:string, :generic},
      documentId: {:string, :generic},
      font: {:string, :generic},
      fontColor: {:string, :generic},
      fontSize: {:string, :generic},
      italic: {:string, :generic},
      name: {:string, :generic},
      pageNumber: {:string, :generic},
      recipientId: {:string, :generic},
      tabId: {:string, :generic},
      tabLabel: {:string, :generic},
      underline: {:string, :generic},
      xPosition: {:string, :generic},
      yPosition: {:string, :generic}
    ]
  end
end
