defmodule ExAxos.FirmSearchResultDigest do
  @moduledoc """
  Provides struct and type for a FirmSearchResultDigest
  """

  @type t :: %__MODULE__{
          firmCount: integer | nil,
          firms: [ExAxos.FirmRestDigest.t()] | nil,
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
      firms: [{ExAxos.FirmRestDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
