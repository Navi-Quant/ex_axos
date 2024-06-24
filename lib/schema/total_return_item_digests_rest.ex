defmodule ExAxos.Schema.TotalReturnItemDigestsRest do
  @moduledoc """
  Provides struct and type for a Schema.TotalReturnItemDigestsRest
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          message: String.t() | nil,
          resultCount: integer | nil,
          status: String.t() | nil,
          twrItems: [ExAxos.Schema.TotalReturnItemDigestRest.t()] | nil
        }

  defstruct [:accountNumber, :message, :resultCount, :status, :twrItems]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: {:string, :generic},
      message: {:string, :generic},
      resultCount: :integer,
      status: {:string, :generic},
      twrItems: [{ExAxos.Schema.TotalReturnItemDigestRest, :t}]
    ]
  end
end
