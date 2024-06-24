defmodule ExAxos.Schema.FeeFamilySearchResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.FeeFamilySearchResultDigest
  """

  @type t :: %__MODULE__{
          feeFamilies: [ExAxos.Schema.FeeFamilyRestDigest.t()] | nil,
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
      feeFamilies: [{ExAxos.Schema.FeeFamilyRestDigest, :t}],
      feeFamiliesCount: :integer,
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
