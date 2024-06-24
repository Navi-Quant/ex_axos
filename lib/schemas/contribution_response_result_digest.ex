defmodule ExAxos.ContributionResponseResultDigest do
  @moduledoc """
  Provides struct and type for a ContributionResponseResultDigest
  """

  @type t :: %__MODULE__{
          contributions: [ExAxos.ContributionDigestRest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil,
          ytd: [ExAxos.YearAmountDigestRest.t()] | nil
        }

  defstruct [:contributions, :message, :status, :ytd]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contributions: [{ExAxos.ContributionDigestRest, :t}],
      message: {:string, :generic},
      status: {:string, :generic},
      ytd: [{ExAxos.YearAmountDigestRest, :t}]
    ]
  end
end
