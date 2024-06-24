defmodule ExAxos.Document do
  @moduledoc """
  Provides struct and type for a Document
  """

  @type t :: %__MODULE__{
          documentId: String.t() | nil,
          name: String.t() | nil,
          transformPdfFields: String.t() | nil
        }

  defstruct [:documentId, :name, :transformPdfFields]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documentId: {:string, :generic},
      name: {:string, :generic},
      transformPdfFields: {:string, :generic}
    ]
  end
end
