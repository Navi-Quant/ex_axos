defmodule ExAxos.Schema.AccountGenerationDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountGenerationDigest
  """

  @type t :: %__MODULE__{
          account: ExAxos.Schema.AccountGenerationAccountDigest.t() | nil,
          beneficialOwners: ExAxos.Schema.AccountBeneficialOwnersRestDigest.t() | nil,
          beneficiaries: [ExAxos.Schema.AccountBeneficiaryCreateRequest.t()] | nil,
          controlPerson: ExAxos.Schema.AccountControlPersonDigest.t() | nil,
          fees: ExAxos.Schema.AccountMaintenanceFeesDigest.t() | nil,
          messages: [String.t()] | nil,
          models: [ExAxos.Schema.AccountModelDigest.t()] | nil,
          representatives: [ExAxos.Schema.AccountGenerationRepresentativeDigest.t()] | nil,
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
      account: {ExAxos.Schema.AccountGenerationAccountDigest, :t},
      beneficialOwners: {ExAxos.Schema.AccountBeneficialOwnersRestDigest, :t},
      beneficiaries: [{ExAxos.Schema.AccountBeneficiaryCreateRequest, :t}],
      controlPerson: {ExAxos.Schema.AccountControlPersonDigest, :t},
      fees: {ExAxos.Schema.AccountMaintenanceFeesDigest, :t},
      messages: [string: :generic],
      models: [{ExAxos.Schema.AccountModelDigest, :t}],
      representatives: [{ExAxos.Schema.AccountGenerationRepresentativeDigest, :t}],
      status: {:string, :generic}
    ]
  end
end
