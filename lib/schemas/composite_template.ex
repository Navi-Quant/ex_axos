defmodule ExAxos.CompositeTemplate do
  @moduledoc """
  Provides struct and type for a CompositeTemplate
  """

  @type t :: %__MODULE__{
          document: ExAxos.Document.t() | nil,
          inlineTemplates: [ExAxos.InlineTemplate.t()] | nil,
          serverTemplates: [ExAxos.ServerTemplate.t()] | nil
        }

  defstruct [:document, :inlineTemplates, :serverTemplates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      document: {ExAxos.Document, :t},
      inlineTemplates: [{ExAxos.InlineTemplate, :t}],
      serverTemplates: [{ExAxos.ServerTemplate, :t}]
    ]
  end
end
