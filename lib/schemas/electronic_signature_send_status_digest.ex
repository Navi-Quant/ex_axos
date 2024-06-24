defmodule ExAxos.ElectronicSignatureSendStatusDigest do
  @moduledoc """
  Provides struct and type for a ElectronicSignatureSendStatusDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          envelopeId: String.t() | nil,
          envelopeStatus: String.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountNumber, :envelopeId, :envelopeStatus, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      envelopeId: {:string, :generic},
      envelopeStatus: {:string, :generic},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
