defmodule ExAxos.BeneficiarySearchResult do
  @moduledoc """
  Provides struct and type for a BeneficiarySearchResult
  """

  @type t :: %__MODULE__{
          beneficiaries: [ExAxos.BeneficiarySearchRest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:beneficiaries, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      beneficiaries: [{ExAxos.BeneficiarySearchRest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
