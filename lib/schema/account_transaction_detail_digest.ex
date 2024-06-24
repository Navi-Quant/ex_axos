defmodule ExAxos.Schema.AccountTransactionDetailDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountTransactionDetailDigest
  """

  @type t :: %__MODULE__{
          accruedInterest: number | nil,
          activity: String.t() | nil,
          activityCode: String.t() | nil,
          cash: number | nil,
          comments: String.t() | nil,
          commission: number | nil,
          costBasis: number | nil,
          fee: ExAxos.Schema.FeeDigest.t() | nil,
          grossAmount: number | nil,
          model: ExAxos.Schema.ModelDigest.t() | nil,
          postDate: String.t() | nil,
          price: number | nil,
          quantity: number | nil,
          security: ExAxos.Schema.SecurityBasicDigest.t() | nil,
          stateWithholding: number | nil,
          statementDate: String.t() | nil,
          tradeDate: String.t() | nil,
          tradeFee: number | nil,
          transactionId: String.t() | nil,
          withholding: number | nil,
          withholdingState: String.t() | nil
        }

  defstruct [
    :accruedInterest,
    :activity,
    :activityCode,
    :cash,
    :comments,
    :commission,
    :costBasis,
    :fee,
    :grossAmount,
    :model,
    :postDate,
    :price,
    :quantity,
    :security,
    :stateWithholding,
    :statementDate,
    :tradeDate,
    :tradeFee,
    :transactionId,
    :withholding,
    :withholdingState
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accruedInterest: :number,
      activity: {:string, :generic},
      activityCode: {:string, :generic},
      cash: :number,
      comments: {:string, :generic},
      commission: :number,
      costBasis: :number,
      fee: {ExAxos.Schema.FeeDigest, :t},
      grossAmount: :number,
      model: {ExAxos.Schema.ModelDigest, :t},
      postDate: {:string, :generic},
      price: :number,
      quantity: :number,
      security: {ExAxos.Schema.SecurityBasicDigest, :t},
      stateWithholding: :number,
      statementDate: {:string, :generic},
      tradeDate: {:string, :generic},
      tradeFee: :number,
      transactionId: {:string, :generic},
      withholding: :number,
      withholdingState: {:string, :generic}
    ]
  end
end
