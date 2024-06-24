defmodule ExAxos.SimpleAccountAuthorizationsAchDigest do
  @moduledoc """
  Provides struct and type for a SimpleAccountAuthorizationsAchDigest
  """

  @type t :: %__MODULE__{
          aba: String.t() | nil,
          achNoteLines: [String.t()] | nil,
          authDate: String.t() | nil,
          bankAccountNo: String.t() | nil,
          id: integer | nil,
          imageId: String.t() | nil,
          notesIncluded: boolean | nil,
          status: String.t() | nil,
          typeOfAccount: String.t() | nil
        }

  defstruct [
    :aba,
    :achNoteLines,
    :authDate,
    :bankAccountNo,
    :id,
    :imageId,
    :notesIncluded,
    :status,
    :typeOfAccount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aba: {:string, :generic},
      achNoteLines: [string: :generic],
      authDate: {:string, :generic},
      bankAccountNo: {:string, :generic},
      id: :integer,
      imageId: {:string, :generic},
      notesIncluded: :boolean,
      status: {:string, :generic},
      typeOfAccount: {:string, :generic}
    ]
  end
end
