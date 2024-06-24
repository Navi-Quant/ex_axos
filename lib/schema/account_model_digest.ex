defmodule ExAxos.Schema.AccountModelDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountModelDigest
  """

  @type t :: %__MODULE__{
          allocationPercent: number | nil,
          contributionPercent: number | nil,
          deviationPercent: number | nil,
          distributionPercent: number | nil,
          downDeviationPercent: number | nil,
          modelId: integer | nil,
          specialHandling: String.t() | nil
        }

  defstruct [
    :allocationPercent,
    :contributionPercent,
    :deviationPercent,
    :distributionPercent,
    :downDeviationPercent,
    :modelId,
    :specialHandling
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allocationPercent: :number,
      contributionPercent: :number,
      deviationPercent: :number,
      distributionPercent: :number,
      downDeviationPercent: :number,
      modelId: :integer,
      specialHandling: {:string, :generic}
    ]
  end
end
