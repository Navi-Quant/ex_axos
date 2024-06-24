defmodule ExAxos.Schema.CreateEnvelopeResponse do
  @moduledoc """
  Provides struct and type for a Schema.CreateEnvelopeResponse
  """

  @type t :: %__MODULE__{
          envelopeId: String.t() | nil,
          status: String.t() | nil,
          statusDateTime: String.t() | nil,
          uri: String.t() | nil
        }

  defstruct [:envelopeId, :status, :statusDateTime, :uri]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      envelopeId: {:string, :generic},
      status: {:string, :generic},
      statusDateTime: {:string, :generic},
      uri: {:string, :generic}
    ]
  end
end
