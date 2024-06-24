defmodule ExAxos.Schema.ContributionResponseResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.ContributionResponseResultDigest
  """

  @type t :: %__MODULE__{
          contributions: [ExAxos.Schema.ContributionDigestRest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil,
          ytd: [ExAxos.Schema.YearAmountDigestRest.t()] | nil
        }

  defstruct [:contributions, :message, :status, :ytd]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contributions: [{ExAxos.Schema.ContributionDigestRest, :t}],
      message: {:string, :generic},
      status: {:string, :generic},
      ytd: [{ExAxos.Schema.YearAmountDigestRest, :t}]
    ]
  end
end
