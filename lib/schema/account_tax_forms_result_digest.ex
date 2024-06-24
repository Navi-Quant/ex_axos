defmodule ExAxos.Schema.AccountTaxFormsResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountTaxFormsResultDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          status: String.t() | nil,
          taxFormDigests: [ExAxos.Schema.TaxFormResultDigest.t()] | nil
        }

  defstruct [:message, :status, :taxFormDigests]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: {:string, :generic},
      status: {:string, :generic},
      taxFormDigests: [{ExAxos.Schema.TaxFormResultDigest, :t}]
    ]
  end
end
