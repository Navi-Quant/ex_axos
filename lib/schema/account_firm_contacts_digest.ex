defmodule ExAxos.Schema.AccountFirmContactsDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountFirmContactsDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          contacts: [ExAxos.Schema.ContactInformationDigest.t()] | nil,
          detailMessages: [ExAxos.Schema.ResponseErrorMessage.t()] | nil
        }

  defstruct [:accountNumber, :contacts, :detailMessages]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      contacts: [{ExAxos.Schema.ContactInformationDigest, :t}],
      detailMessages: [{ExAxos.Schema.ResponseErrorMessage, :t}]
    ]
  end
end
