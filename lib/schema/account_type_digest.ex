defmodule ExAxos.Schema.AccountTypeDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountTypeDigest
  """

  @type t :: %__MODULE__{
          birthDateRequired: boolean | nil,
          cashDemandAllowed: boolean | nil,
          code: String.t() | nil,
          description: String.t() | nil,
          qualifiedPlan: boolean | nil,
          rmdEligible: boolean | nil,
          taxFormatType: String.t() | nil,
          taxable: boolean | nil
        }

  defstruct [
    :birthDateRequired,
    :cashDemandAllowed,
    :code,
    :description,
    :qualifiedPlan,
    :rmdEligible,
    :taxFormatType,
    :taxable
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthDateRequired: :boolean,
      cashDemandAllowed: :boolean,
      code: {:string, :generic},
      description: {:string, :generic},
      qualifiedPlan: :boolean,
      rmdEligible: :boolean,
      taxFormatType: {:string, :generic},
      taxable: :boolean
    ]
  end
end
