defmodule ExAxos.SignatureInfo do
  @moduledoc """
  Provides struct and type for a SignatureInfo
  """

  @type t :: %__MODULE__{
          fontStyle: String.t() | nil,
          signatureInitials: String.t() | nil,
          signatureName: String.t() | nil
        }

  defstruct [:fontStyle, :signatureInitials, :signatureName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      fontStyle: {:string, :generic},
      signatureInitials: {:string, :generic},
      signatureName: {:string, :generic}
    ]
  end
end
