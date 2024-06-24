defmodule ExAxos.Schema.CompositeTemplate do
  @moduledoc """
  Provides struct and type for a Schema.CompositeTemplate
  """

  @type t :: %__MODULE__{
          document: ExAxos.Schema.Document.t() | nil,
          inlineTemplates: [ExAxos.Schema.InlineTemplate.t()] | nil,
          serverTemplates: [ExAxos.Schema.ServerTemplate.t()] | nil
        }

  defstruct [:document, :inlineTemplates, :serverTemplates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      document: {ExAxos.Schema.Document, :t},
      inlineTemplates: [{ExAxos.Schema.InlineTemplate, :t}],
      serverTemplates: [{ExAxos.Schema.ServerTemplate, :t}]
    ]
  end
end
