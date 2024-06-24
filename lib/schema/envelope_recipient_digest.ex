defmodule ExAxos.Schema.EnvelopeRecipientDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeRecipientDigest
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          editable: boolean | nil,
          email: String.t() | nil,
          emailRequired: boolean | nil,
          label: String.t() | nil,
          name: String.t() | nil,
          nameRequired: boolean | nil,
          phoneAuthorizationRequired: boolean | nil,
          phoneNumber: String.t() | nil,
          phoneNumberRequired: boolean | nil,
          required: boolean | nil,
          role: String.t() | nil
        }

  defstruct [
    :description,
    :editable,
    :email,
    :emailRequired,
    :label,
    :name,
    :nameRequired,
    :phoneAuthorizationRequired,
    :phoneNumber,
    :phoneNumberRequired,
    :required,
    :role
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: {:string, :generic},
      editable: :boolean,
      email: {:string, :generic},
      emailRequired: :boolean,
      label: {:string, :generic},
      name: {:string, :generic},
      nameRequired: :boolean,
      phoneAuthorizationRequired: :boolean,
      phoneNumber: {:string, :generic},
      phoneNumberRequired: :boolean,
      required: :boolean,
      role: {:string, :generic}
    ]
  end
end
