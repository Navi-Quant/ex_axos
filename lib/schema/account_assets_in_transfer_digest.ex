defmodule ExAxos.Schema.AccountAssetsInTransferDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountAssetsInTransferDigest
  """

  @type t :: %__MODULE__{
          assetsInTransferDetails: [ExAxos.Schema.AccountAssetsInTransferDetailDigest.t()] | nil,
          closeDate: String.t() | nil,
          openDate: String.t() | nil,
          pendingAssets: number | nil,
          pendingCash: number | nil,
          sequenceNumber: integer | nil,
          status: String.t() | nil,
          totalPending: number | nil,
          totalReceived: number | nil,
          totalValue: number | nil,
          transferringFirm: ExAxos.Schema.TransferringFirmDigest.t() | nil,
          transferringFirmAccountNumber: String.t() | nil,
          transferringFirmAccountType: String.t() | nil
        }

  defstruct [
    :assetsInTransferDetails,
    :closeDate,
    :openDate,
    :pendingAssets,
    :pendingCash,
    :sequenceNumber,
    :status,
    :totalPending,
    :totalReceived,
    :totalValue,
    :transferringFirm,
    :transferringFirmAccountNumber,
    :transferringFirmAccountType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assetsInTransferDetails: [{ExAxos.Schema.AccountAssetsInTransferDetailDigest, :t}],
      closeDate: {:string, :generic},
      openDate: {:string, :generic},
      pendingAssets: :number,
      pendingCash: :number,
      sequenceNumber: :integer,
      status: {:string, :generic},
      totalPending: :number,
      totalReceived: :number,
      totalValue: :number,
      transferringFirm: {ExAxos.Schema.TransferringFirmDigest, :t},
      transferringFirmAccountNumber: {:string, :generic},
      transferringFirmAccountType: {:string, :generic}
    ]
  end
end
