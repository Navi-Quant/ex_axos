defmodule ExAxos.Schema.EnvelopeSettingsAccountFormsDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeSettingsAccountFormsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          advisorForms: [ExAxos.Schema.EnvelopeAccountFormDigest.t()] | nil,
          availableForms: [ExAxos.Schema.EnvelopeAccountFormDigest.t()] | nil,
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
      advisorForms: [{ExAxos.Schema.EnvelopeAccountFormDigest, :t}],
      availableForms: [{ExAxos.Schema.EnvelopeAccountFormDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
