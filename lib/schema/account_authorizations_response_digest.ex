defmodule ExAxos.Schema.AccountAuthorizationsResponseDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountAuthorizationsResponseDigest
  """

  @type t :: %__MODULE__{
          accountAuthorizations: ExAxos.Schema.AccountAuthorizationsInfo.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountAuthorizations, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountAuthorizations: {ExAxos.Schema.AccountAuthorizationsInfo, :t},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
