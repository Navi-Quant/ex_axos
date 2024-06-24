defmodule ExAxos.EnvelopeAccountFormDigest do
  @moduledoc """
  Provides struct and type for a EnvelopeAccountFormDigest
  """

  @type t :: %__MODULE__{
          accountFormCode: String.t() | nil,
          description: String.t() | nil,
          disableCopies: boolean | nil,
          docusignTemplateId: String.t() | nil,
          required: boolean | nil
        }

  defstruct [:accountFormCode, :description, :disableCopies, :docusignTemplateId, :required]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountFormCode: {:string, :generic},
      description: {:string, :generic},
      disableCopies: :boolean,
      docusignTemplateId: {:string, :generic},
      required: :boolean
    ]
  end
end
