defmodule ExAxos.Schema.RepresentativeCreateResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.RepresentativeCreateResultDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          representativeId: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:message, :representativeId, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: {:string, :generic},
      representativeId: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
