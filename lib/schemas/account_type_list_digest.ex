defmodule ExAxos.AccountTypeListDigest do
  @moduledoc """
  Provides struct and type for a AccountTypeListDigest
  """

  @type t :: %__MODULE__{
          accountTypes: [ExAxos.AccountTypeDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountTypes, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountTypes: [{ExAxos.AccountTypeDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
