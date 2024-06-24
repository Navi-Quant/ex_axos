defmodule ExAxos.Schema.DobInformationInput do
  @moduledoc """
  Provides struct and types for a Schema.DobInformationInput
  """

  @type t :: %__MODULE__{
          dateOfBirth: String.t() | nil,
          displayLevelCode: String.t() | nil,
          receiveInResponse: String.t() | nil
        }

  defstruct [:dateOfBirth, :displayLevelCode, :receiveInResponse]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dateOfBirth: {:string, :generic},
      displayLevelCode: {:string, :generic},
      receiveInResponse: {:string, :generic}
    ]
  end
end
