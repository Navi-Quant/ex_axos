defmodule ExAxos.Notification do
  @moduledoc """
  Provides struct and type for a Notification
  """

  @type t :: %__MODULE__{
          expirations: ExAxos.Expirations.t() | nil,
          reminders: ExAxos.Reminders.t() | nil,
          useAccountDefaults: String.t() | nil
        }

  defstruct [:expirations, :reminders, :useAccountDefaults]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      expirations: {ExAxos.Expirations, :t},
      reminders: {ExAxos.Reminders, :t},
      useAccountDefaults: {:string, :generic}
    ]
  end
end
