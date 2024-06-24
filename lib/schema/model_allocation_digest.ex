defmodule ExAxos.Schema.ModelAllocationDigest do
  @moduledoc """
  Provides struct and type for a Schema.ModelAllocationDigest
  """

  @type t :: %__MODULE__{
          abbreviation: String.t() | nil,
          description: String.t() | nil,
          modelId: String.t() | nil,
          modelType: ExAxos.Schema.ModelTypeDigest.t() | nil,
          models: [ExAxos.Schema.ModelAllocationModelDigest.t()] | nil,
          securities: [ExAxos.Schema.ModelAllocationSecurityDigest.t()] | nil
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
      modelType: {ExAxos.Schema.ModelTypeDigest, :t},
      models: [{ExAxos.Schema.ModelAllocationModelDigest, :t}],
      securities: [{ExAxos.Schema.ModelAllocationSecurityDigest, :t}]
    ]
  end
end
