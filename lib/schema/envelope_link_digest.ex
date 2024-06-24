defmodule ExAxos.Schema.EnvelopeLinkDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeLinkDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          status: String.t() | nil,
          viewEnvelopeLink: String.t() | nil
        }

  defstruct [:message, :status, :viewEnvelopeLink]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: {:string, :generic},
      status: {:string, :generic},
      viewEnvelopeLink: {:string, :generic}
    ]
  end
end
