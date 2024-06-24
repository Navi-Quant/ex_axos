defmodule ExAxos.Schema.ListItem do
  @moduledoc """
  Provides struct and type for a Schema.ListItem
  """

  @type t :: %__MODULE__{
          selected: String.t() | nil,
          text: String.t() | nil,
          value: String.t() | nil
        }

  defstruct [:selected, :text, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [selected: {:string, :generic}, text: {:string, :generic}, value: {:string, :generic}]
  end
end
