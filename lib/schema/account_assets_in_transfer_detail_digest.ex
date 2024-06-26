defmodule ExAxos.Schema.AccountAssetsInTransferDetailDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountAssetsInTransferDetailDigest
  """

  @type t :: %__MODULE__{
          assetStatus: String.t() | nil,
          costBasis: number | nil,
          dateReceived: String.t() | nil,
          expectedValueOfAssets: number | nil,
          model: ExAxos.Schema.ModelDigest.t() | nil,
          quantity: number | nil,
          referenceNumber: integer | nil,
          security: ExAxos.Schema.SecurityBasicDigest.t() | nil,
          sellReg: String.t() | nil
        }

  defstruct [
    :assetStatus,
    :costBasis,
    :dateReceived,
    :expectedValueOfAssets,
    :model,
    :quantity,
    :referenceNumber,
    :security,
    :sellReg
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assetStatus: {:string, :generic},
      costBasis: :number,
      dateReceived: {:string, :generic},
      expectedValueOfAssets: :number,
      model: {ExAxos.Schema.ModelDigest, :t},
      quantity: :number,
      referenceNumber: :integer,
      security: {ExAxos.Schema.SecurityBasicDigest, :t},
      sellReg: {:string, :generic}
    ]
  end
end
