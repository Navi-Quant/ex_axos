defmodule ExAxos.Schema.Notification do
  @moduledoc """
  Provides struct and type for a Schema.Notification
  """

  @type t :: %__MODULE__{
          expirations: ExAxos.Schema.Expirations.t() | nil,
          reminders: ExAxos.Schema.Reminders.t() | nil,
          useAccountDefaults: String.t() | nil
        }

  defstruct [:expirations, :reminders, :useAccountDefaults]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      expirations: {ExAxos.Schema.Expirations, :t},
      reminders: {ExAxos.Schema.Reminders, :t},
      useAccountDefaults: {:string, :generic}
    ]
  end
end
