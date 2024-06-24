defmodule ExAxos.Schema.RepresentativesResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.RepresentativesResultDigest
  """

  @type t :: %__MODULE__{
          message: String.t() | nil,
          representatives: [ExAxos.Schema.RepresentativeDigest.t()] | nil,
          status: String.t() | nil,
          totalRows: integer | nil
        }

  defstruct [:message, :representatives, :status, :totalRows]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      message: {:string, :generic},
      representatives: [{ExAxos.Schema.RepresentativeDigest, :t}],
      status: {:string, :generic},
      totalRows: :integer
    ]
  end
end
