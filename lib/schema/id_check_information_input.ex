defmodule ExAxos.Schema.IdCheckInformationInput do
  @moduledoc """
  Provides struct and types for a Schema.IdCheckInformationInput
  """

  @type t :: %__MODULE__{
          addressInformationInput: ExAxos.Schema.AddressInformationInput.t() | nil,
          dobInformationInput: ExAxos.Schema.DobInformationInput.t() | nil,
          ssn4InformationInput: ExAxos.Schema.Ssn4InformationInput.t() | nil,
          ssn9InformationInput: ExAxos.Schema.Ssn9InformationInput.t() | nil
        }

  defstruct [
    :addressInformationInput,
    :dobInformationInput,
    :ssn4InformationInput,
    :ssn9InformationInput
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      addressInformationInput: {ExAxos.Schema.AddressInformationInput, :t},
      dobInformationInput: {ExAxos.Schema.DobInformationInput, :t},
      ssn4InformationInput: {ExAxos.Schema.Ssn4InformationInput, :t},
      ssn9InformationInput: {ExAxos.Schema.Ssn9InformationInput, :t}
    ]
  end
end
