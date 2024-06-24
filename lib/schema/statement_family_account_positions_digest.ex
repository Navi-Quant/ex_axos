defmodule ExAxos.Schema.StatementFamilyAccountPositionsDigest do
  @moduledoc """
  Provides struct and type for a Schema.StatementFamilyAccountPositionsDigest
  """

  @type t :: %__MODULE__{
          accountPositions: [ExAxos.Schema.AccountPositionAggregatedDigest.t()] | nil,
          message: String.t() | nil,
          statementFamilyId: String.t() | nil,
          statementFamilyName: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountPositions, :message, :statementFamilyId, :statementFamilyName, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountPositions: [{ExAxos.Schema.AccountPositionAggregatedDigest, :t}],
      message: {:string, :generic},
      statementFamilyId: {:string, :generic},
      statementFamilyName: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
