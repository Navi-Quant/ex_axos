defmodule ExAxos.BeneficiaryCreateRestRequest do
  @moduledoc """
  Provides struct and type for a BeneficiaryCreateRestRequest
  """

  @type t :: %__MODULE__{beneficiary: ExAxos.BeneficiaryRestDigest.t() | nil}

  defstruct [:beneficiary]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [beneficiary: {ExAxos.BeneficiaryRestDigest, :t}]
  end
end
