defmodule ExAxos.EnvelopeSearchResult do
  @moduledoc """
  Provides struct and type for a EnvelopeSearchResult
  """

  @type t :: %__MODULE__{
          endPosition: String.t() | nil,
          folders: [ExAxos.Folder.t()] | nil,
          resultSetSize: String.t() | nil,
          startPosition: String.t() | nil,
          totalSetSize: String.t() | nil
        }

  defstruct [:endPosition, :folders, :resultSetSize, :startPosition, :totalSetSize]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      endPosition: {:string, :generic},
      folders: [{ExAxos.Folder, :t}],
      resultSetSize: {:string, :generic},
      startPosition: {:string, :generic},
      totalSetSize: {:string, :generic}
    ]
  end
end
