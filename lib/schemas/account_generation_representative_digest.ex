defmodule ExAxos.AccountGenerationRepresentativeDigest do
  @moduledoc """
  Provides struct and type for a AccountGenerationRepresentativeDigest
  """

  @type t :: %__MODULE__{
          commissionPercent: number | nil,
          representativeId: integer | nil,
          representativeOnStatement: boolean | nil,
          statementCopy: boolean | nil
        }

  defstruct [:commissionPercent, :representativeId, :representativeOnStatement, :statementCopy]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      commissionPercent: :number,
      representativeId: :integer,
      representativeOnStatement: :boolean,
      statementCopy: :boolean
    ]
  end
end
