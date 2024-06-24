defmodule ExAxos.Schema.InlineTemplate do
  @moduledoc """
  Provides struct and type for a Schema.InlineTemplate
  """

  @type t :: %__MODULE__{
          customFields: ExAxos.Schema.CustomFields.t() | nil,
          documents: [ExAxos.Schema.Document.t()] | nil,
          recipients: ExAxos.Schema.Recipients.t() | nil,
          sequence: integer | nil
        }

  defstruct [:customFields, :documents, :recipients, :sequence]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      customFields: {ExAxos.Schema.CustomFields, :t},
      documents: [{ExAxos.Schema.Document, :t}],
      recipients: {ExAxos.Schema.Recipients, :t},
      sequence: :integer
    ]
  end
end
