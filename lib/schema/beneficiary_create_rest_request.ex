defmodule ExAxos.Schema.BeneficiaryCreateRestRequest do
  @moduledoc """
  Provides struct and type for a Schema.BeneficiaryCreateRestRequest
  """

  @type t :: %__MODULE__{beneficiary: ExAxos.Schema.BeneficiaryRestDigest.t() | nil}

  defstruct [:beneficiary]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [beneficiary: {ExAxos.Schema.BeneficiaryRestDigest, :t}]
  end
end
