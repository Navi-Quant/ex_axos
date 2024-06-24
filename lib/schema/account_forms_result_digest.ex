defmodule ExAxos.Schema.AccountFormsResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountFormsResultDigest
  """

  @type t :: %__MODULE__{
          accountFormDigests: [ExAxos.Schema.AccountFormResultDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountFormDigests, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountFormDigests: [{ExAxos.Schema.AccountFormResultDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
