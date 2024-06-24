defmodule ExAxos.Schema.AccountBeneficiaryCreateRequest do
  @moduledoc """
  Provides struct and type for a Schema.AccountBeneficiaryCreateRequest
  """

  @type t :: %__MODULE__{
          beneficiaryId: String.t() | nil,
          beneficiaryType: String.t() | nil,
          contingentPercentage: number | nil,
          primaryPercentage: number | nil,
          spouse: boolean | nil
        }

  defstruct [:beneficiaryId, :beneficiaryType, :contingentPercentage, :primaryPercentage, :spouse]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      beneficiaryId: {:string, :generic},
      beneficiaryType: {:string, :generic},
      contingentPercentage: :number,
      primaryPercentage: :number,
      spouse: :boolean
    ]
  end
end
