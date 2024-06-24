defmodule ExAxos.Schema.AccountBeneficialOwnersRestDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountBeneficialOwnersRestDigest
  """

  @type t :: %__MODULE__{
          digests: [ExAxos.Schema.AccountBeneficialOwnerDetailDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:digests, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      digests: [{ExAxos.Schema.AccountBeneficialOwnerDetailDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
