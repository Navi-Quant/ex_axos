defmodule ExAxos.AccountGenerationDigest do
  @moduledoc """
  Provides struct and type for a AccountGenerationDigest
  """

  @type t :: %__MODULE__{
          account: ExAxos.AccountGenerationAccountDigest.t() | nil,
          beneficialOwners: ExAxos.AccountBeneficialOwnersRestDigest.t() | nil,
          beneficiaries: [ExAxos.AccountBeneficiaryCreateRequest.t()] | nil,
          controlPerson: ExAxos.AccountControlPersonDigest.t() | nil,
          fees: ExAxos.AccountMaintenanceFeesDigest.t() | nil,
          messages: [String.t()] | nil,
          models: [ExAxos.AccountModelDigest.t()] | nil,
          representatives: [ExAxos.AccountGenerationRepresentativeDigest.t()] | nil,
          status: String.t() | nil
        }

  defstruct [
    :account,
    :beneficialOwners,
    :beneficiaries,
    :controlPerson,
    :fees,
    :messages,
    :models,
    :representatives,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      account: {ExAxos.AccountGenerationAccountDigest, :t},
      beneficialOwners: {ExAxos.AccountBeneficialOwnersRestDigest, :t},
      beneficiaries: [{ExAxos.AccountBeneficiaryCreateRequest, :t}],
      controlPerson: {ExAxos.AccountControlPersonDigest, :t},
      fees: {ExAxos.AccountMaintenanceFeesDigest, :t},
      messages: [string: :generic],
      models: [{ExAxos.AccountModelDigest, :t}],
      representatives: [{ExAxos.AccountGenerationRepresentativeDigest, :t}],
      status: {:string, :generic}
    ]
  end
end
