defmodule ExAxos.Schema.ServerTemplate do
  @moduledoc """
  Provides struct and type for a Schema.ServerTemplate
  """

  @type t :: %__MODULE__{sequence: integer | nil, templateId: String.t() | nil}

  defstruct [:sequence, :templateId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sequence: :integer, templateId: {:string, :generic}]
  end
end
