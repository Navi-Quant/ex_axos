defmodule ExAxos.BulletinResponseResultDigest do
  @moduledoc """
  Provides struct and type for a BulletinResponseResultDigest
  """

  @type t :: %__MODULE__{
          bulletin: ExAxos.BulletinDetailResultDigest.t() | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:bulletin, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bulletin: {ExAxos.BulletinDetailResultDigest, :t},
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
