defmodule ExAxos.Schema.AccountPositionAggregatedDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountPositionAggregatedDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          accountType: String.t() | nil,
          custodyManagement: String.t() | nil,
          institution: String.t() | nil,
          positions: [ExAxos.Schema.PositionDigest.t()] | nil
        }

  defstruct [
    :accountName,
    :accountNumber,
    :accountType,
    :custodyManagement,
    :institution,
    :positions
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      accountType: {:string, :generic},
      custodyManagement: {:string, :generic},
      institution: {:string, :generic},
      positions: [{ExAxos.Schema.PositionDigest, :t}]
    ]
  end
end
