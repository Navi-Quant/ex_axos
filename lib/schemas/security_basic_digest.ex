defmodule ExAxos.SecurityBasicDigest do
  @moduledoc """
  Provides struct and type for a SecurityBasicDigest
  """

  @type t :: %__MODULE__{
          assetClass: ExAxos.AssetClassDigest.t() | nil,
          assetType: ExAxos.AssetTypeDigest.t() | nil,
          closingTime: String.t() | nil,
          cusip: String.t() | nil,
          description: String.t() | nil,
          doNotUse: boolean | nil,
          equity: boolean | nil,
          exchangable: boolean | nil,
          firmId: integer | nil,
          fund: boolean | nil,
          fundServeFlag: boolean | nil,
          lastPrice: number | nil,
          lastPriceDate: String.t() | nil,
          minimumAllocation: number | nil,
          minimumHoldingDays: integer | nil,
          ntfFlag: boolean | nil,
          roundingFactor: number | nil,
          settleDaysOne: integer | nil,
          settleDaysTwo: integer | nil,
          shortTermFeeDays: integer | nil,
          subAssetClass: ExAxos.SubAssetClassDigest.t() | nil,
          symbol: String.t() | nil,
          tradeAvailable: boolean | nil
        }

  defstruct [
    :assetClass,
    :assetType,
    :closingTime,
    :cusip,
    :description,
    :doNotUse,
    :equity,
    :exchangable,
    :firmId,
    :fund,
    :fundServeFlag,
    :lastPrice,
    :lastPriceDate,
    :minimumAllocation,
    :minimumHoldingDays,
    :ntfFlag,
    :roundingFactor,
    :settleDaysOne,
    :settleDaysTwo,
    :shortTermFeeDays,
    :subAssetClass,
    :symbol,
    :tradeAvailable
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assetClass: {ExAxos.AssetClassDigest, :t},
      assetType: {ExAxos.AssetTypeDigest, :t},
      closingTime: {:string, :generic},
      cusip: {:string, :generic},
      description: {:string, :generic},
      doNotUse: :boolean,
      equity: :boolean,
      exchangable: :boolean,
      firmId: :integer,
      fund: :boolean,
      fundServeFlag: :boolean,
      lastPrice: :number,
      lastPriceDate: {:string, :generic},
      minimumAllocation: :number,
      minimumHoldingDays: :integer,
      ntfFlag: :boolean,
      roundingFactor: :number,
      settleDaysOne: :integer,
      settleDaysTwo: :integer,
      shortTermFeeDays: :integer,
      subAssetClass: {ExAxos.SubAssetClassDigest, :t},
      symbol: {:string, :generic},
      tradeAvailable: :boolean
    ]
  end
end
