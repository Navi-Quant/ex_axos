defmodule ExAxos.AggInvestorRestResponse do
  @moduledoc """
  Provides struct and type for a AggInvestorRestResponse
  """

  @type t :: %__MODULE__{
          configs: [map] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:configs, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [configs: [:map], message: {:string, :generic}, status: {:string, :generic}]
  end
end
