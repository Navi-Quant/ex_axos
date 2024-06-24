defmodule ExAxos.TotalReturnSummaryDigestsRest do
  @moduledoc """
  Provides struct and type for a TotalReturnSummaryDigestsRest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil,
          twrSummaries: [ExAxos.TotalReturnSummaryDigestRest.t()] | nil
        }

  defstruct [:accountNumber, :message, :status, :twrSummaries]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      message: {:string, :generic},
      status: {:string, :generic},
      twrSummaries: [{ExAxos.TotalReturnSummaryDigestRest, :t}]
    ]
  end
end
