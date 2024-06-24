defmodule ExAxos.AggHeldAwaysRestResponse do
  @moduledoc """
  Provides struct and type for a AggHeldAwaysRestResponse
  """

  @type t :: %__MODULE__{
          heldAways: [ExAxos.AggHeldAwayRestDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:heldAways, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      heldAways: [{ExAxos.AggHeldAwayRestDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
