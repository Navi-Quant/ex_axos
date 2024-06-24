defmodule ExAxos.AccountTypeDetailDigest do
  @moduledoc """
  Provides struct and type for a AccountTypeDetailDigest
  """

  @type t :: %__MODULE__{
          accountType: ExAxos.AccountTypeDigest.t() | nil,
          accountTypeForms: [ExAxos.AccountTypeFormDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountType, :accountTypeForms, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountType: {ExAxos.AccountTypeDigest, :t},
      accountTypeForms: [{ExAxos.AccountTypeFormDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
