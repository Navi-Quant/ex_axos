defmodule ExAxos.Schema.DistributionDigestRest do
  @moduledoc """
  Provides struct and type for a Schema.DistributionDigestRest
  """

  @type t :: %__MODULE__{
          abaName: String.t() | nil,
          abaNameOnAccount: String.t() | nil,
          abaNumber: String.t() | nil,
          accountNumber: String.t() | nil,
          amount: String.t() | nil,
          bankAccountNumber: String.t() | nil,
          bankAccountType: String.t() | nil,
          dateOfNextDistribution: String.t() | nil,
          distributionNumber: integer | nil,
          frequency: String.t() | nil
        }

  defstruct [
    :abaName,
    :abaNameOnAccount,
    :abaNumber,
    :accountNumber,
    :amount,
    :bankAccountNumber,
    :bankAccountType,
    :dateOfNextDistribution,
    :distributionNumber,
    :frequency
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
      amount: {:string, :generic},
      bankAccountNumber: {:string, :generic},
      bankAccountType: {:string, :generic},
      dateOfNextDistribution: {:string, :generic},
      distributionNumber: :integer,
      frequency: {:string, :generic}
    ]
  end
end
