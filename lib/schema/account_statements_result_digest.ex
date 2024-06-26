defmodule ExAxos.Schema.AccountStatementsResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountStatementsResultDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          statementDigests: [ExAxos.Schema.StatementResultDigest.t()] | nil,
          status: String.t() | nil
        }

  defstruct [:message, :statementDigests, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: {:string, :generic},
      statementDigests: [{ExAxos.Schema.StatementResultDigest, :t}],
      status: {:string, :generic}
    ]
  end
end
