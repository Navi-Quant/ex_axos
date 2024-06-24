defmodule ExAxos.CheckboxTab do
  @moduledoc """
  Provides struct and type for a CheckboxTab
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
          locked: String.t() | nil,
          mergeFieldXml: String.t() | nil,
          name: String.t() | nil,
          pageNumber: String.t() | nil,
          recipientId: String.t() | nil,
          requireInitialOnSharedChange: String.t() | nil,
          required: String.t() | nil,
          selected: String.t() | nil,
          shared: String.t() | nil,
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
    :locked,
    :mergeFieldXml,
    :name,
    :pageNumber,
    :recipientId,
    :requireInitialOnSharedChange,
    :required,
    :selected,
    :shared,
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
      locked: {:string, :generic},
      mergeFieldXml: {:string, :generic},
      name: {:string, :generic},
      pageNumber: {:string, :generic},
      recipientId: {:string, :generic},
      requireInitialOnSharedChange: {:string, :generic},
      required: {:string, :generic},
      selected: {:string, :generic},
      shared: {:string, :generic},
      tabId: {:string, :generic},
      tabLabel: {:string, :generic},
      xPosition: {:string, :generic},
      yPosition: {:string, :generic}
    ]
  end
end
