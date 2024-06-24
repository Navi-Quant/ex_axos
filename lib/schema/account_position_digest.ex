defmodule ExAxos.Schema.AccountPositionDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountPositionDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          positions: [ExAxos.Schema.PositionDigest.t()] | nil
        }

  defstruct [:accountName, :accountNumber, :positions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      positions: [{ExAxos.Schema.PositionDigest, :t}]
    ]
  end
end
