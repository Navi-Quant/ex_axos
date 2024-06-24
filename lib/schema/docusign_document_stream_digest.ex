defmodule ExAxos.Schema.DocusignDocumentStreamDigest do
  @moduledoc """
  Provides struct and type for a Schema.DocusignDocumentStreamDigest
  """

  @type t :: %__MODULE__{
          contentType: String.t() | nil,
          contents: String.t() | nil,
          fileName: String.t() | nil
        }

  defstruct [:contentType, :contents, :fileName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contentType: {:string, :generic},
      contents: {:string, :generic},
      fileName: {:string, :generic}
    ]
  end
end
