defmodule ExAxos.AccountTypeFormDigest do
  @moduledoc """
  Provides struct and type for a AccountTypeFormDigest
  """

  @type t :: %__MODULE__{
          code: String.t() | nil,
          description: String.t() | nil,
          formId: integer | nil,
          required: boolean | nil
        }

  defstruct [:code, :description, :formId, :required]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      code: {:string, :generic},
      description: {:string, :generic},
      formId: :integer,
      required: :boolean
    ]
  end
end
