defmodule ExAxos.SignHereTab do
  @moduledoc """
  Provides struct and type for a SignHereTab
  """

  @type t :: %__MODULE__{
          anchorIgnoreIfNotPresent: String.t() | nil,
          anchorString: String.t() | nil,
          anchorUnits: String.t() | nil,
          anchorXOffset: String.t() | nil,
          anchorYOffset: String.t() | nil,
          conditionalParentLabel: String.t() | nil,
          conditionalParentValue: String.t() | nil,
          documentId: String.t() | nil,
          name: String.t() | nil,
          optional: String.t() | nil,
          pageNumber: String.t() | nil,
          recipientId: String.t() | nil,
          scaleValue: number | nil,
          tabId: String.t() | nil,
          tabLabel: String.t() | nil,
          xPosition: String.t() | nil,
          yPosition: String.t() | nil
        }

  defstruct [
    :anchorIgnoreIfNotPresent,
    :anchorString,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :conditionalParentLabel,
    :conditionalParentValue,
    :documentId,
    :name,
    :optional,
    :pageNumber,
    :recipientId,
    :scaleValue,
    :tabId,
    :tabLabel,
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
      conditionalParentLabel: {:string, :generic},
      conditionalParentValue: {:string, :generic},
      documentId: {:string, :generic},
      name: {:string, :generic},
      optional: {:string, :generic},
      pageNumber: {:string, :generic},
      recipientId: {:string, :generic},
      scaleValue: :number,
      tabId: {:string, :generic},
      tabLabel: {:string, :generic},
      xPosition: {:string, :generic},
      yPosition: {:string, :generic}
    ]
  end
end
