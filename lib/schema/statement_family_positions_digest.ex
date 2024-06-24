defmodule ExAxos.Schema.StatementFamilyPositionsDigest do
  @moduledoc """
  Provides struct and type for a Schema.StatementFamilyPositionsDigest
  """

  @type t :: %__MODULE__{
          accountPositionDigests: [ExAxos.Schema.AccountPositionDigest.t()] | nil,
          message: String.t() | nil,
          statementFamilyId: String.t() | nil,
          statementFamilyName: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountPositionDigests, :message, :statementFamilyId, :statementFamilyName, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountPositionDigests: [{ExAxos.Schema.AccountPositionDigest, :t}],
      message: {:string, :generic},
      statementFamilyId: {:string, :generic},
      statementFamilyName: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
