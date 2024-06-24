defmodule ExAxos.AccountBeneficiariesResultDigest do
  @moduledoc """
  Provides struct and type for a AccountBeneficiariesResultDigest
  """

  @type t :: %__MODULE__{
          accountId: String.t() | nil,
          beneficiaries: [ExAxos.AccountBeneficiarySearchResultDigest.t()] | nil,
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
      beneficiaries: [{ExAxos.AccountBeneficiarySearchResultDigest, :t}],
      message: {:string, :generic},
      resultCount: :integer,
      status: {:string, :generic}
    ]
  end
end
