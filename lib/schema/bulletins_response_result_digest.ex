defmodule ExAxos.Schema.BulletinsResponseResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.BulletinsResponseResultDigest
  """

  @type t :: %__MODULE__{
          bulletins: [ExAxos.Schema.BulletinResultDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:bulletins, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bulletins: [{ExAxos.Schema.BulletinResultDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
