defmodule ExAxos.Schema.DistributionResponseResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.DistributionResponseResultDigest
  """

  @type t :: %__MODULE__{
          distributions: [ExAxos.Schema.DistributionDigestRest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:distributions, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      distributions: [{ExAxos.Schema.DistributionDigestRest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
