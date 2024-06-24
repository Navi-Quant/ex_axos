defmodule ExAxos.FeeScheduleRestDigest do
  @moduledoc """
  Provides struct and type for a FeeScheduleRestDigest
  """

  @type t :: %__MODULE__{
          comments: String.t() | nil,
          description: String.t() | nil,
          flatFee: String.t() | nil,
          frequency: String.t() | nil,
          id: String.t() | nil,
          includeCash: boolean | nil,
          maxFee: String.t() | nil,
          minFee: String.t() | nil,
          modelRelationType: String.t() | nil,
          models: [ExAxos.ModelDigest.t()] | nil,
          modelsCount: integer | nil,
          splitPercentage: number | nil,
          useMinMax: boolean | nil,
          valuationMethod: String.t() | nil
        }

  defstruct [
    :comments,
    :description,
    :flatFee,
    :frequency,
    :id,
    :includeCash,
    :maxFee,
    :minFee,
    :modelRelationType,
    :models,
    :modelsCount,
    :splitPercentage,
    :useMinMax,
    :valuationMethod
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      comments: {:string, :generic},
      description: {:string, :generic},
      flatFee: {:string, :generic},
      frequency: {:string, :generic},
      id: {:string, :generic},
      includeCash: :boolean,
      maxFee: {:string, :generic},
      minFee: {:string, :generic},
      modelRelationType: {:string, :generic},
      models: [{ExAxos.ModelDigest, :t}],
      modelsCount: :integer,
      splitPercentage: :number,
      useMinMax: :boolean,
      valuationMethod: {:string, :generic}
    ]
  end
end
