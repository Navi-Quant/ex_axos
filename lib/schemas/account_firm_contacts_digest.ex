defmodule ExAxos.AccountFirmContactsDigest do
  @moduledoc """
  Provides struct and type for a AccountFirmContactsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          contacts: [ExAxos.ContactInformationDigest.t()] | nil,
          detailMessages: [ExAxos.ResponseErrorMessage.t()] | nil
        }

  defstruct [:accountNumber, :contacts, :detailMessages]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      contacts: [{ExAxos.ContactInformationDigest, :t}],
      detailMessages: [{ExAxos.ResponseErrorMessage, :t}]
    ]
  end
end
