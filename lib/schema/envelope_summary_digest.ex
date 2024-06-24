defmodule ExAxos.Schema.EnvelopeSummaryDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeSummaryDigest
  """

  @type t :: %__MODULE__{
          envelopeId: String.t() | nil,
          envelopeStatus: String.t() | nil,
          senderName: String.t() | nil,
          sentDate: String.t() | nil,
          subject: String.t() | nil
        }

  defstruct [:envelopeId, :envelopeStatus, :senderName, :sentDate, :subject]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      envelopeId: {:string, :generic},
      envelopeStatus: {:string, :generic},
      senderName: {:string, :generic},
      sentDate: {:string, :generic},
      subject: {:string, :generic}
    ]
  end
end
