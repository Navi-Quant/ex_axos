defmodule ExAxos.StatementFamilyResultDigest do
  @moduledoc """
  Provides struct and type for a StatementFamilyResultDigest
  """

  @type t :: %__MODULE__{
          accounts: [ExAxos.StatementFamilyAccountResultDigest.t()] | nil,
          familyName: String.t() | nil,
          familyNumber: String.t() | nil,
          familyStatus: String.t() | nil,
          message: String.t() | nil,
          primaryAccountNumber: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :accounts,
    :familyName,
    :familyNumber,
    :familyStatus,
    :message,
    :primaryAccountNumber,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accounts: [{ExAxos.StatementFamilyAccountResultDigest, :t}],
      familyName: {:string, :generic},
      familyNumber: {:string, :generic},
      familyStatus: {:string, :generic},
      message: {:string, :generic},
      primaryAccountNumber: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
