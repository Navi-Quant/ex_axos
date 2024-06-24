defmodule ExAxos.TextCustomField do
  @moduledoc """
  Provides struct and type for a TextCustomField
  """

  @type t :: %__MODULE__{
          name: String.t() | nil,
          required: String.t() | nil,
          show: String.t() | nil,
          value: String.t() | nil
        }

  defstruct [:name, :required, :show, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      name: {:string, :generic},
      required: {:string, :generic},
      show: {:string, :generic},
      value: {:string, :generic}
    ]
  end
end
