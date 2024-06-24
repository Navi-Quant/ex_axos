defmodule ExAxos.AccountAuthorizationsResponseDigest do
  @moduledoc """
  Provides struct and type for a AccountAuthorizationsResponseDigest
  """

  @type t :: %__MODULE__{
          accountAuthorizations: ExAxos.AccountAuthorizationsInfo.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountAuthorizations, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountAuthorizations: {ExAxos.AccountAuthorizationsInfo, :t},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
