defmodule ExAxos.IdCheckInformationInput do
  @moduledoc """
  Provides struct and types for a IdCheckInformationInput
  """

  @type t :: %__MODULE__{
          addressInformationInput: ExAxos.AddressInformationInput.t() | nil,
          dobInformationInput: ExAxos.DobInformationInput.t() | nil,
          ssn4InformationInput: ExAxos.Ssn4InformationInput.t() | nil,
          ssn9InformationInput: ExAxos.Ssn9InformationInput.t() | nil
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
      addressInformationInput: {ExAxos.AddressInformationInput, :t},
      dobInformationInput: {ExAxos.DobInformationInput, :t},
      ssn4InformationInput: {ExAxos.Ssn4InformationInput, :t},
      ssn9InformationInput: {ExAxos.Ssn9InformationInput, :t}
    ]
  end
end
