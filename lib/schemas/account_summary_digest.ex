defmodule ExAxos.AccountSummaryDigest do
  @moduledoc """
  Provides struct and type for a AccountSummaryDigest
  """

  @type t :: %__MODULE__{
          accountBalance: number | nil,
          accountNumber: String.t() | nil,
          accountType: String.t() | nil,
          accountTypeCode: String.t() | nil,
          alphaName: String.t() | nil,
          status: String.t() | nil,
          stmtFamilyAccountStatusType: String.t() | nil,
          stmtFamilyId: String.t() | nil,
          stmtFamilyName: String.t() | nil
        }

  defstruct [
    :accountBalance,
    :accountNumber,
    :accountType,
    :accountTypeCode,
    :alphaName,
    :status,
    :stmtFamilyAccountStatusType,
    :stmtFamilyId,
    :stmtFamilyName
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountBalance: :number,
      accountNumber: {:string, :generic},
      accountType: {:string, :generic},
      accountTypeCode: {:string, :generic},
      alphaName: {:string, :generic},
      status: {:string, :generic},
      stmtFamilyAccountStatusType: {:enum, ["APPROVED", "PRIMARY", "WAITING", "NONE"]},
      stmtFamilyId: {:string, :generic},
      stmtFamilyName: {:string, :generic}
    ]
  end
end
