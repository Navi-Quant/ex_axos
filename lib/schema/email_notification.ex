defmodule ExAxos.Schema.EmailNotification do
  @moduledoc """
  Provides struct and types for a Schema.EmailNotification
  """

  @type t :: %__MODULE__{
          emailBody: String.t() | nil,
          emailSubject: String.t() | nil,
          supportedLanguage: String.t() | nil
        }

  defstruct [:emailBody, :emailSubject, :supportedLanguage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      emailBody: {:string, :generic},
      emailSubject: {:string, :generic},
      supportedLanguage: {:string, :generic}
    ]
  end
end
