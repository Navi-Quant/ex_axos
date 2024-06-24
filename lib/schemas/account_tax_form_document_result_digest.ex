defmodule ExAxos.AccountTaxFormDocumentResultDigest do
  @moduledoc """
  Provides struct and type for a AccountTaxFormDocumentResultDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          status: String.t() | nil,
          taxForm: String.t() | nil
        }

  defstruct [:message, :status, :taxForm]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [message: {:string, :generic}, status: {:string, :generic}, taxForm: {:string, :generic}]
  end
end
