defmodule ExAxos.Schema.RadioGroupTab do
  @moduledoc """
  Provides struct and type for a Schema.RadioGroupTab
  """

  @type t :: %__MODULE__{
          conditionalParentLabel: String.t() | nil,
          conditionalParentValue: String.t() | nil,
          documentId: String.t() | nil,
          groupName: String.t() | nil,
          radios: [ExAxos.Schema.Radio.t()] | nil,
          recipientId: String.t() | nil,
          requireInitialOnSharedChange: String.t() | nil,
          shared: String.t() | nil
        }

  defstruct [
    :conditionalParentLabel,
    :conditionalParentValue,
    :documentId,
    :groupName,
    :radios,
    :recipientId,
    :requireInitialOnSharedChange,
    :shared
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      conditionalParentLabel: {:string, :generic},
      conditionalParentValue: {:string, :generic},
      documentId: {:string, :generic},
      groupName: {:string, :generic},
      radios: [{ExAxos.Schema.Radio, :t}],
      recipientId: {:string, :generic},
      requireInitialOnSharedChange: {:string, :generic},
      shared: {:string, :generic}
    ]
  end
end
