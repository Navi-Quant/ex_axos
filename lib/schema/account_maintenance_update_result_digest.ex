defmodule ExAxos.Schema.AccountMaintenanceUpdateResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.AccountMaintenanceUpdateResultDigest
  """

  @type t :: %__MODULE__{
          detailedMessages: [String.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:detailedMessages, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detailedMessages: [string: :generic],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
