defmodule ExAxos.ApproveTab do
  @moduledoc """
  Provides struct and type for a ApproveTab
  """

  @type t :: %__MODULE__{
          anchorIgnoreIfNotPresent: String.t() | nil,
          anchorString: String.t() | nil,
          anchorUnits: String.t() | nil,
          anchorXOffset: String.t() | nil,
          anchorYOffset: String.t() | nil,
          bold: String.t() | nil,
          buttonText: String.t() | nil,
          conditionalParentLabel: String.t() | nil,
          conditionalParentValue: String.t() | nil,
          documentId: String.t() | nil,
          font: String.t() | nil,
          fontColor: String.t() | nil,
          fontSize: String.t() | nil,
          height: integer | nil,
          italic: String.t() | nil,
          pageNumber: String.t() | nil,
          recipientId: String.t() | nil,
          tabId: String.t() | nil,
          tabLabel: String.t() | nil,
          underline: String.t() | nil,
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
    :buttonText,
    :conditionalParentLabel,
    :conditionalParentValue,
    :documentId,
    :font,
    :fontColor,
    :fontSize,
    :height,
    :italic,
    :pageNumber,
    :recipientId,
    :tabId,
    :tabLabel,
    :underline,
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
      buttonText: {:string, :generic},
      conditionalParentLabel: {:string, :generic},
      conditionalParentValue: {:string, :generic},
      documentId: {:string, :generic},
      font: {:string, :generic},
      fontColor: {:string, :generic},
      fontSize: {:string, :generic},
      height: :integer,
      italic: {:string, :generic},
      pageNumber: {:string, :generic},
      recipientId: {:string, :generic},
      tabId: {:string, :generic},
      tabLabel: {:string, :generic},
      underline: {:string, :generic},
      width: :integer,
      xPosition: {:string, :generic},
      yPosition: {:string, :generic}
    ]
  end
end
