defmodule ExAxos.BulletinDetailResultDigest do
  @moduledoc """
  Provides struct and type for a BulletinDetailResultDigest
  """

  @type t :: %__MODULE__{
          bulletinDetails: [ExAxos.BulletinDetailDigest.t()] | nil,
          bulletinId: String.t() | nil,
          columns: [ExAxos.BulletinColumn.t()] | nil,
          enteredDate: String.t() | nil,
          enteredTime: String.t() | nil,
          messages: [String.t()] | nil,
          mustRead: boolean | nil,
          subject: String.t() | nil
        }

  defstruct [
    :bulletinDetails,
    :bulletinId,
    :columns,
    :enteredDate,
    :enteredTime,
    :messages,
    :mustRead,
    :subject
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bulletinDetails: [{ExAxos.BulletinDetailDigest, :t}],
      bulletinId: {:string, :generic},
      columns: [{ExAxos.BulletinColumn, :t}],
      enteredDate: {:string, :generic},
      enteredTime: {:string, :generic},
      messages: [string: :generic],
      mustRead: :boolean,
      subject: {:string, :generic}
    ]
  end
end
