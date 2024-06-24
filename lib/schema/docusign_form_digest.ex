defmodule ExAxos.Schema.DocusignFormDigest do
  @moduledoc """
  Provides struct and type for a Schema.DocusignFormDigest
  """

  @type t :: %__MODULE__{
          accountFormCode: String.t() | nil,
          advisorId: integer | nil,
          allowCopies: boolean | nil,
          description: String.t() | nil,
          disableCopies: boolean | nil,
          docusignTemplateId: String.t() | nil,
          doucsignTemplateId: String.t() | nil,
          formOrder: integer | nil,
          numCopies: integer | nil,
          required: boolean | nil,
          selected: boolean | nil,
          uiName: String.t() | nil,
          validationState: String.t() | nil
        }

  defstruct [
    :accountFormCode,
    :advisorId,
    :allowCopies,
    :description,
    :disableCopies,
    :docusignTemplateId,
    :doucsignTemplateId,
    :formOrder,
    :numCopies,
    :required,
    :selected,
    :uiName,
    :validationState
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountFormCode: {:string, :generic},
      advisorId: :integer,
      allowCopies: :boolean,
      description: {:string, :generic},
      disableCopies: :boolean,
      docusignTemplateId: {:string, :generic},
      doucsignTemplateId: {:string, :generic},
      formOrder: :integer,
      numCopies: :integer,
      required: :boolean,
      selected: :boolean,
      uiName: {:string, :generic},
      validationState: {:enum, ["VALID", "REQUIRED_VALID", "REQUIRED_INVALID", "INVALID", "DISABLED"]}
    ]
  end
end
