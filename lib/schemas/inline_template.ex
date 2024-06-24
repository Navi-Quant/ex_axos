defmodule ExAxos.InlineTemplate do
  @moduledoc """
  Provides struct and type for a InlineTemplate
  """

  @type t :: %__MODULE__{
          customFields: ExAxos.CustomFields.t() | nil,
          documents: [ExAxos.Document.t()] | nil,
          recipients: ExAxos.Recipients.t() | nil,
          sequence: integer | nil
        }

  defstruct [:customFields, :documents, :recipients, :sequence]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      customFields: {ExAxos.CustomFields, :t},
      documents: [{ExAxos.Document, :t}],
      recipients: {ExAxos.Recipients, :t},
      sequence: :integer
    ]
  end
end
