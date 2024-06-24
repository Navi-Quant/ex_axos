defmodule ExAxos.RecipientAttachment do
  @moduledoc """
  Provides struct and types for a RecipientAttachment
  """

  @type t :: %__MODULE__{attachmentType: String.t() | nil, label: String.t() | nil}

  defstruct [:attachmentType, :label]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [attachmentType: {:string, :generic}, label: {:string, :generic}]
  end
end
