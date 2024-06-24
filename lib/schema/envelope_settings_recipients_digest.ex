defmodule ExAxos.Schema.EnvelopeSettingsRecipientsDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeSettingsRecipientsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          availableRecipients: [ExAxos.Schema.EnvelopeRecipientDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountNumber, :availableRecipients, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      availableRecipients: [{ExAxos.Schema.EnvelopeRecipientDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
