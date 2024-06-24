defmodule ExAxos.Schema.Reminders do
  @moduledoc """
  Provides struct and type for a Schema.Reminders
  """

  @type t :: %__MODULE__{
          reminderDelay: String.t() | nil,
          reminderEnabled: String.t() | nil,
          reminderFrequency: String.t() | nil
        }

  defstruct [:reminderDelay, :reminderEnabled, :reminderFrequency]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reminderDelay: {:string, :generic},
      reminderEnabled: {:string, :generic},
      reminderFrequency: {:string, :generic}
    ]
  end
end
