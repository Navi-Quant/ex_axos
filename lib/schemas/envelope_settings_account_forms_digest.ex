defmodule ExAxos.EnvelopeSettingsAccountFormsDigest do
  @moduledoc """
  Provides struct and type for a EnvelopeSettingsAccountFormsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          advisorForms: [ExAxos.EnvelopeAccountFormDigest.t()] | nil,
          availableForms: [ExAxos.EnvelopeAccountFormDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountNumber, :advisorForms, :availableForms, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      advisorForms: [{ExAxos.EnvelopeAccountFormDigest, :t}],
      availableForms: [{ExAxos.EnvelopeAccountFormDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
