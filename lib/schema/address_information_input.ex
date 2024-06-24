defmodule ExAxos.Schema.AddressInformationInput do
  @moduledoc """
  Provides struct and types for a Schema.AddressInformationInput
  """

  @type t :: %__MODULE__{
          addressInformation: ExAxos.Schema.AddressInformation.t() | nil,
          displayLevelCode: String.t() | nil,
          receiveInResponse: String.t() | nil
        }

  defstruct [:addressInformation, :displayLevelCode, :receiveInResponse]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      addressInformation: {ExAxos.Schema.AddressInformation, :t},
      displayLevelCode: {:string, :generic},
      receiveInResponse: {:string, :generic}
    ]
  end
end
