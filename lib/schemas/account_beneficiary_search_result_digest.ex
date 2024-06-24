defmodule ExAxos.AccountBeneficiarySearchResultDigest do
  @moduledoc """
  Provides struct and type for a AccountBeneficiarySearchResultDigest
  """

  @type t :: %__MODULE__{
          beneficiaryId: integer | nil,
          birthDate: String.t() | nil,
          contingentPercentage: number | nil,
          name: String.t() | nil,
          primaryPercentage: number | nil,
          spouse: boolean | nil,
          taxId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :beneficiaryId,
    :birthDate,
    :contingentPercentage,
    :name,
    :primaryPercentage,
    :spouse,
    :taxId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      beneficiaryId: :integer,
      birthDate: {:string, :generic},
      contingentPercentage: :number,
      name: {:string, :generic},
      primaryPercentage: :number,
      spouse: :boolean,
      taxId: {:string, :generic},
      type: {:string, :generic}
    ]
  end
end
