defmodule ExAxos.Schema.CustomFields do
  @moduledoc """
  Provides struct and type for a Schema.CustomFields
  """

  @type t :: %__MODULE__{textCustomFields: [ExAxos.Schema.TextCustomField.t()] | nil}

  defstruct [:textCustomFields]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [textCustomFields: [{ExAxos.Schema.TextCustomField, :t}]]
  end
end
