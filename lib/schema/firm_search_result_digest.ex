defmodule ExAxos.Schema.FirmSearchResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.FirmSearchResultDigest
  """

  @type t :: %__MODULE__{
          firmCount: integer | nil,
          firms: [ExAxos.Schema.FirmRestDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:firmCount, :firms, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      firmCount: :integer,
      firms: [{ExAxos.Schema.FirmRestDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
