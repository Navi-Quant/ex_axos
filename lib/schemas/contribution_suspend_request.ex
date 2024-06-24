defmodule ExAxos.ContributionSuspendRequest do
  @moduledoc """
  Provides struct and type for a ContributionSuspendRequest
  """

  @type t :: %__MODULE__{accountNumber: String.t() | nil, id: String.t() | nil}

  defstruct [:accountNumber, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountNumber: {:string, :generic}, id: {:string, :generic}]
  end
end
