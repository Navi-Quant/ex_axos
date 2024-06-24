defmodule ExAxos.PhoneAuthentication do
  @moduledoc """
  Provides struct and types for a PhoneAuthentication
  """

  @type t :: %__MODULE__{
          recipMayProvideNumber: String.t() | nil,
          recordVoicePrint: String.t() | nil,
          senderProvidedNumbers: [String.t()] | nil,
          validateRecipProvidedNumber: String.t() | nil
        }

  defstruct [
    :recipMayProvideNumber,
    :recordVoicePrint,
    :senderProvidedNumbers,
    :validateRecipProvidedNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      recipMayProvideNumber: {:string, :generic},
      recordVoicePrint: {:string, :generic},
      senderProvidedNumbers: [string: :generic],
      validateRecipProvidedNumber: {:string, :generic}
    ]
  end
end
