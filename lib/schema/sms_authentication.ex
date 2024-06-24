defmodule ExAxos.Schema.SmsAuthentication do
  @moduledoc """
  Provides struct and types for a Schema.SmsAuthentication
  """

  @type t :: %__MODULE__{senderProvidedNumbers: [String.t()] | nil}

  defstruct [:senderProvidedNumbers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [senderProvidedNumbers: [string: :generic]]
  end
end
