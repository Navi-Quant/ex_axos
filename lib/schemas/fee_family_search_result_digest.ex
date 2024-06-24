defmodule ExAxos.FeeFamilySearchResultDigest do
  @moduledoc """
  Provides struct and type for a FeeFamilySearchResultDigest
  """

  @type t :: %__MODULE__{
          feeFamilies: [ExAxos.FeeFamilyRestDigest.t()] | nil,
          feeFamiliesCount: integer | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:feeFamilies, :feeFamiliesCount, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      feeFamilies: [{ExAxos.FeeFamilyRestDigest, :t}],
      feeFamiliesCount: :integer,
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
