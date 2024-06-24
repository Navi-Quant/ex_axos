defmodule ExAxos.Schema.EnvelopeAccountFormRequestDigest do
  @moduledoc """
  Provides struct and type for a Schema.EnvelopeAccountFormRequestDigest
  """

  @type t :: %__MODULE__{accountFormCode: String.t() | nil, copies: integer | nil}

  defstruct [:accountFormCode, :copies]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountFormCode: {:string, :generic}, copies: :integer]
  end
end
