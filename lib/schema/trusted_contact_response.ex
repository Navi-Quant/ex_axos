defmodule ExAxos.Schema.TrustedContactResponse do
  @moduledoc """
  Provides struct and type for a Schema.TrustedContactResponse
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          status: String.t() | nil,
          trustedContacts: [ExAxos.Schema.TrustedContactRest.t()] | nil
        }

  defstruct [:message, :status, :trustedContacts]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: {:string, :generic},
      status: {:string, :generic},
      trustedContacts: [{ExAxos.Schema.TrustedContactRest, :t}]
    ]
  end
end
