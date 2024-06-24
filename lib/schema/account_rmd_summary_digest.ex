defmodule ExAxos.Schema.AccountRmdSummaryDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountRmdSummaryDigest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          message: String.t() | nil,
          rmdTypeCode: String.t() | nil,
          rmdYears: [ExAxos.Schema.RmdVO.t()] | nil,
          status: String.t() | nil
        }

  defstruct [:accountNumber, :message, :rmdTypeCode, :rmdYears, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      message: {:string, :generic},
      rmdTypeCode: {:string, :generic},
      rmdYears: [{ExAxos.Schema.RmdVO, :t}],
      status: {:string, :generic}
    ]
  end
end
