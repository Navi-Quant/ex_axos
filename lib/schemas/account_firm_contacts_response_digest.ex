defmodule ExAxos.AccountFirmContactsResponseDigest do
  @moduledoc """
  Provides struct and type for a AccountFirmContactsResponseDigest
  """

  @type t :: %__MODULE__{
          accountFirmContacts: ExAxos.AccountFirmContactsDigest.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountFirmContacts, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountFirmContacts: {ExAxos.AccountFirmContactsDigest, :t},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
