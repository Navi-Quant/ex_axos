defmodule ExAxos.Schema.ResponseErrorMessage do
  @moduledoc """
  Provides struct and type for a Schema.ResponseErrorMessage
  """

  @type t :: %__MODULE__{
          number: String.t() | nil,
          prefix: String.t() | nil,
          text: String.t() | nil
        }

  defstruct [:number, :prefix, :text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [number: {:string, :generic}, prefix: {:string, :generic}, text: {:string, :generic}]
  end
end
