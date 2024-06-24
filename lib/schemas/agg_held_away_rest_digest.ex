defmodule ExAxos.AggHeldAwayRestDigest do
  @moduledoc """
  Provides struct and type for a AggHeldAwayRestDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          accountStatus: String.t() | nil,
          accountType: String.t() | nil,
          advisorId: integer | nil,
          aggregationSource: String.t() | nil,
          asset: boolean | nil,
          balanceAmount: number | nil,
          balanceCurrency: String.t() | nil,
          connAdditionalStatus: String.t() | nil,
          connLastUpdateAttempt: DateTime.t() | nil,
          connLastUpdated: DateTime.t() | nil,
          connNextUpdateScheduled: DateTime.t() | nil,
          connUpdateEligibility: String.t() | nil,
          container: String.t() | nil,
          createdDate: DateTime.t() | nil,
          createdDateUiString: String.t() | nil,
          delete: boolean | nil,
          displayedName: String.t() | nil,
          id: integer | nil,
          includeInNetWorth: boolean | nil,
          investorGuid: String.t() | nil,
          investorHeldAccountNumber: integer | nil,
          lastUpdated: DateTime.t() | nil,
          lastUpdatedDateUiString: String.t() | nil,
          manual: boolean | nil,
          nickname: String.t() | nil,
          providerAccountId: integer | nil,
          providerId: String.t() | nil,
          providerName: String.t() | nil,
          userId: integer | nil,
          userName: String.t() | nil
        }

  defstruct [
    :accountName,
    :accountNumber,
    :accountStatus,
    :accountType,
    :advisorId,
    :aggregationSource,
    :asset,
    :balanceAmount,
    :balanceCurrency,
    :connAdditionalStatus,
    :connLastUpdateAttempt,
    :connLastUpdated,
    :connNextUpdateScheduled,
    :connUpdateEligibility,
    :container,
    :createdDate,
    :createdDateUiString,
    :delete,
    :displayedName,
    :id,
    :includeInNetWorth,
    :investorGuid,
    :investorHeldAccountNumber,
    :lastUpdated,
    :lastUpdatedDateUiString,
    :manual,
    :nickname,
    :providerAccountId,
    :providerId,
    :providerName,
    :userId,
    :userName
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      accountStatus: {:string, :generic},
      accountType: {:string, :generic},
      advisorId: :integer,
      aggregationSource: {:string, :generic},
      asset: :boolean,
      balanceAmount: :number,
      balanceCurrency: {:string, :generic},
      connAdditionalStatus: {:string, :generic},
      connLastUpdateAttempt: {:string, :date_time},
      connLastUpdated: {:string, :date_time},
      connNextUpdateScheduled: {:string, :date_time},
      connUpdateEligibility: {:string, :generic},
      container: {:string, :generic},
      createdDate: {:string, :date_time},
      createdDateUiString: {:string, :generic},
      delete: :boolean,
      displayedName: {:string, :generic},
      id: :integer,
      includeInNetWorth: :boolean,
      investorGuid: {:string, :generic},
      investorHeldAccountNumber: :integer,
      lastUpdated: {:string, :date_time},
      lastUpdatedDateUiString: {:string, :generic},
      manual: :boolean,
      nickname: {:string, :generic},
      providerAccountId: :integer,
      providerId: {:string, :generic},
      providerName: {:string, :generic},
      userId: :integer,
      userName: {:string, :generic}
    ]
  end
end
