defmodule ExAxos.Schema.Expirations do
  @moduledoc """
  Provides struct and type for a Schema.Expirations
  """

  @type t :: %__MODULE__{
          expireAfter: String.t() | nil,
          expireEnabled: String.t() | nil,
          expireWarn: String.t() | nil
        }

  defstruct [:expireAfter, :expireEnabled, :expireWarn]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      expireAfter: {:string, :generic},
      expireEnabled: {:string, :generic},
      expireWarn: {:string, :generic}
    ]
  end
end
