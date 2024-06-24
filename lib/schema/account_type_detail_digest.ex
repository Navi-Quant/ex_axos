defmodule ExAxos.Schema.AccountTypeDetailDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountTypeDetailDigest
  """

  @type t :: %__MODULE__{
          accountType: ExAxos.Schema.AccountTypeDigest.t() | nil,
          accountTypeForms: [ExAxos.Schema.AccountTypeFormDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountType, :accountTypeForms, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountType: {ExAxos.Schema.AccountTypeDigest, :t},
      accountTypeForms: [{ExAxos.Schema.AccountTypeFormDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
