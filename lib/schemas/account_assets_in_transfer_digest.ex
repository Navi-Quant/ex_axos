defmodule ExAxos.AccountAssetsInTransferDigest do
  @moduledoc """
  Provides struct and type for a AccountAssetsInTransferDigest
  """

  @type t :: %__MODULE__{
          assetsInTransferDetails: [ExAxos.AccountAssetsInTransferDetailDigest.t()] | nil,
          closeDate: String.t() | nil,
          openDate: String.t() | nil,
          pendingAssets: number | nil,
          pendingCash: number | nil,
          sequenceNumber: integer | nil,
          status: String.t() | nil,
          totalPending: number | nil,
          totalReceived: number | nil,
          totalValue: number | nil,
          transferringFirm: ExAxos.TransferringFirmDigest.t() | nil,
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
      assetsInTransferDetails: [{ExAxos.AccountAssetsInTransferDetailDigest, :t}],
      closeDate: {:string, :generic},
      openDate: {:string, :generic},
      pendingAssets: :number,
      pendingCash: :number,
      sequenceNumber: :integer,
      status: {:string, :generic},
      totalPending: :number,
      totalReceived: :number,
      totalValue: :number,
      transferringFirm: {ExAxos.TransferringFirmDigest, :t},
      transferringFirmAccountNumber: {:string, :generic},
      transferringFirmAccountType: {:string, :generic}
    ]
  end
end
