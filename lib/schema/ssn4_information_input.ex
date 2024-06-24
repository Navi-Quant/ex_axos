defmodule ExAxos.Schema.Ssn4InformationInput do
  @moduledoc """
  Provides struct and types for a Schema.Ssn4InformationInput
  """

  @type t :: %__MODULE__{
          displayLevelCode: String.t() | nil,
          receiveInResponse: String.t() | nil,
          ssn4: String.t() | nil
        }

  defstruct [:displayLevelCode, :receiveInResponse, :ssn4]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayLevelCode: {:string, :generic},
      receiveInResponse: {:string, :generic},
      ssn4: {:string, :generic}
    ]
  end
end
