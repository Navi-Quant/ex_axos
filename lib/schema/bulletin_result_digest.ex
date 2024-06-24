defmodule ExAxos.Schema.BulletinResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.BulletinResultDigest
  """

  @type t :: %__MODULE__{
          bulletinId: String.t() | nil,
          enteredDate: String.t() | nil,
          enteredTime: String.t() | nil,
          mustRead: boolean | nil,
          subject: String.t() | nil
        }

  defstruct [:bulletinId, :enteredDate, :enteredTime, :mustRead, :subject]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bulletinId: {:string, :generic},
      enteredDate: {:string, :generic},
      enteredTime: {:string, :generic},
      mustRead: :boolean,
      subject: {:string, :generic}
    ]
  end
end
