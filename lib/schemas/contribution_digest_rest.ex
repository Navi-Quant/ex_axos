defmodule ExAxos.ContributionDigestRest do
  @moduledoc """
  Provides struct and type for a ContributionDigestRest
  """

  @type t :: %__MODULE__{
          abaName: String.t() | nil,
          abaNameOnAccount: String.t() | nil,
          abaNumber: String.t() | nil,
          accountNumber: String.t() | nil,
          activityType: String.t() | nil,
          amount: String.t() | nil,
          bankAccountNumber: String.t() | nil,
          bankAccountType: String.t() | nil,
          contributionNumber: String.t() | nil,
          dateOfNextContribution: String.t() | nil,
          frequency: String.t() | nil,
          suspendFlag: String.t() | nil,
          taxYear: String.t() | nil
        }

  defstruct [
    :abaName,
    :abaNameOnAccount,
    :abaNumber,
    :accountNumber,
    :activityType,
    :amount,
    :bankAccountNumber,
    :bankAccountType,
    :contributionNumber,
    :dateOfNextContribution,
    :frequency,
    :suspendFlag,
    :taxYear
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      abaName: {:string, :generic},
      abaNameOnAccount: {:string, :generic},
      abaNumber: {:string, :generic},
      accountNumber: {:string, :generic},
      activityType: {:string, :generic},
      amount: {:string, :generic},
      bankAccountNumber: {:string, :generic},
      bankAccountType: {:string, :generic},
      contributionNumber: {:string, :generic},
      dateOfNextContribution: {:string, :generic},
      frequency: {:string, :generic},
      suspendFlag: {:string, :generic},
      taxYear: {:string, :generic}
    ]
  end
end
