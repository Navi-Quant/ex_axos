defmodule ExAxos.RepresentativeDigest do
  @moduledoc """
  Provides struct and type for a RepresentativeDigest
  """

  @type t :: %__MODULE__{
          crdNumber: String.t() | nil,
          firmId: integer | nil,
          id: String.t() | nil,
          nameLine1: String.t() | nil,
          nameLine2: String.t() | nil
        }

  defstruct [:crdNumber, :firmId, :id, :nameLine1, :nameLine2]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      crdNumber: {:string, :generic},
      firmId: :integer,
      id: {:string, :generic},
      nameLine1: {:string, :generic},
      nameLine2: {:string, :generic}
    ]
  end
end
