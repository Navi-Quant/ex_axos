defmodule ExAxos.Schema.EnvelopeSearchResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeSearchResultDigest
  """

  @type t :: %__MODULE__{
          envelopes: [ExAxos.Schema.EnvelopeSummaryDigest.t()] | nil,
          folderType: String.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:envelopes, :folderType, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      envelopes: [{ExAxos.Schema.EnvelopeSummaryDigest, :t}],
      folderType: {:string, :generic},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
