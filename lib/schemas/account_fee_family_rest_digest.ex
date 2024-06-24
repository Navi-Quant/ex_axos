defmodule ExAxos.AccountFeeFamilyRestDigest do
  @moduledoc """
  Provides struct and type for a AccountFeeFamilyRestDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          familyPaidByAccountNumber: String.t() | nil,
          familyPaidByPercent: number | nil,
          feeFamilyId: String.t() | nil
        }

  defstruct [:accountNumber, :familyPaidByAccountNumber, :familyPaidByPercent, :feeFamilyId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      familyPaidByAccountNumber: {:string, :generic},
      familyPaidByPercent: :number,
      feeFamilyId: {:string, :generic}
    ]
  end
end
