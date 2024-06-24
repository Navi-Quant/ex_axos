defmodule ExAxos.ModelAllocationDigest do
  @moduledoc """
  Provides struct and type for a ModelAllocationDigest
  """

  @type t :: %__MODULE__{
          abbreviation: String.t() | nil,
          description: String.t() | nil,
          modelId: String.t() | nil,
          modelType: ExAxos.ModelTypeDigest.t() | nil,
          models: [ExAxos.ModelAllocationModelDigest.t()] | nil,
          securities: [ExAxos.ModelAllocationSecurityDigest.t()] | nil
        }

  defstruct [:abbreviation, :description, :modelId, :modelType, :models, :securities]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      abbreviation: {:string, :generic},
      description: {:string, :generic},
      modelId: {:string, :generic},
      modelType: {ExAxos.ModelTypeDigest, :t},
      models: [{ExAxos.ModelAllocationModelDigest, :t}],
      securities: [{ExAxos.ModelAllocationSecurityDigest, :t}]
    ]
  end
end
