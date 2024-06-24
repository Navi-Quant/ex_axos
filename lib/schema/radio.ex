defmodule ExAxos.Schema.Radio do
  @moduledoc """
  Provides struct and type for a Schema.Radio
  """

  @type t :: %__MODULE__{
          anchorIgnoreIfNotPresent: String.t() | nil,
          anchorString: String.t() | nil,
          anchorUnits: String.t() | nil,
          anchorXOffset: String.t() | nil,
          anchorYOffset: String.t() | nil,
          locked: String.t() | nil,
          pageNumber: String.t() | nil,
          required: String.t() | nil,
          selected: String.t() | nil,
          tabId: String.t() | nil,
          value: String.t() | nil,
          xPosition: String.t() | nil,
          yPosition: String.t() | nil
        }

  defstruct [
    :anchorIgnoreIfNotPresent,
    :anchorString,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :locked,
    :pageNumber,
    :required,
    :selected,
    :tabId,
    :value,
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
      locked: {:string, :generic},
      pageNumber: {:string, :generic},
      required: {:string, :generic},
      selected: {:string, :generic},
      tabId: {:string, :generic},
      value: {:string, :generic},
      xPosition: {:string, :generic},
      yPosition: {:string, :generic}
    ]
  end
end
