defmodule ExAxos.Schema.InterestedPartyId do
  @moduledoc """
  Provides struct and type for a Schema.InterestedPartyId
  """

  @type t :: %__MODULE__{accountNumber: String.t() | nil, id: integer | nil}

  defstruct [:accountNumber, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: {:string, :generic}, id: :integer]
  end
end
