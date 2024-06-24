defmodule ExAxos.Schema.AccountBeneficiariesResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountBeneficiariesResultDigest
  """

  @type t :: %__MODULE__{
          accountId: String.t() | nil,
          beneficiaries: [ExAxos.Schema.AccountBeneficiarySearchResultDigest.t()] | nil,
          message: String.t() | nil,
          resultCount: integer | nil,
          status: String.t() | nil
        }

  defstruct [:accountId, :beneficiaries, :message, :resultCount, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountId: {:string, :generic},
      beneficiaries: [{ExAxos.Schema.AccountBeneficiarySearchResultDigest, :t}],
      message: {:string, :generic},
      resultCount: :integer,
      status: {:string, :generic}
    ]
  end
end
