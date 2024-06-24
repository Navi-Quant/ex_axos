defmodule ExAxos.Schema.AccountStatementDocumentResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountStatementDocumentResultDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          statement: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:message, :statement, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: {:string, :generic}, statement: {:string, :generic}, status: {:string, :generic}]
  end
end
