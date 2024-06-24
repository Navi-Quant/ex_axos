defmodule ExAxos.BeneficiarySearchRest do
  @moduledoc """
  Provides struct and type for a BeneficiarySearchRest
  """

  @type t :: %__MODULE__{
          beneficiaryId: String.t() | nil,
          birthDate: String.t() | nil,
          firstName: String.t() | nil,
          fullName: String.t() | nil,
          lastName: String.t() | nil,
          middleName: String.t() | nil
        }

  defstruct [:beneficiaryId, :birthDate, :firstName, :fullName, :lastName, :middleName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      beneficiaryId: {:string, :generic},
      birthDate: {:string, :generic},
      firstName: {:string, :generic},
      fullName: {:string, :generic},
      lastName: {:string, :generic},
      middleName: {:string, :generic}
    ]
  end
end
