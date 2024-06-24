defmodule ExAxos.Schema.AccountSummariesResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountSummariesResultDigest
  """

  @type t :: %__MODULE__{
          accounts: [ExAxos.Schema.AccountSummaryDigest.t()] | nil,
          message: String.t() | nil,
          offset: integer | nil,
          rowsAvailable: integer | nil,
          rowsReturned: integer | nil,
          status: String.t() | nil
        }

  defstruct [:accounts, :message, :offset, :rowsAvailable, :rowsReturned, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accounts: [{ExAxos.Schema.AccountSummaryDigest, :t}],
      message: {:string, :generic},
      offset: :integer,
      rowsAvailable: :integer,
      rowsReturned: :integer,
      status: {:string, :generic}
    ]
  end
end
