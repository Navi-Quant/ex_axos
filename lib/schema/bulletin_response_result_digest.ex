defmodule ExAxos.Schema.BulletinResponseResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.BulletinResponseResultDigest
  """

  @type t :: %__MODULE__{
          bulletin: ExAxos.Schema.BulletinDetailResultDigest.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:bulletin, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bulletin: {ExAxos.Schema.BulletinDetailResultDigest, :t},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
