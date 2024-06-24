defmodule ExAxos.Schema.EnvelopeRecipientRequestDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeRecipientRequestDigest
  """

  @type t :: %__MODULE__{
          email: String.t() | nil,
          name: String.t() | nil,
          phoneNumber: String.t() | nil,
          role: String.t() | nil
        }

  defstruct [:email, :name, :phoneNumber, :role]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      email: {:string, :generic},
      name: {:string, :generic},
      phoneNumber: {:string, :generic},
      role: {:string, :generic}
    ]
  end
end
