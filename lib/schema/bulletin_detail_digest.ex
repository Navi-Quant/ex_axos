defmodule ExAxos.Schema.BulletinDetailDigest do
  @moduledoc """
  Provides struct and type for a Schema.BulletinDetailDigest
  """

  @type t :: %__MODULE__{
          bulletinId: String.t() | nil,
          firstValue: integer | nil,
          linkAvailable: boolean | nil,
          linkTypeViewAccount: boolean | nil,
          linkTypeViewTrade: boolean | nil,
          tradeDetailDigests: [ExAxos.Schema.BulletinTradeDetailDigest.t()] | nil,
          values: [String.t()] | nil
        }

  defstruct [
    :bulletinId,
    :firstValue,
    :linkAvailable,
    :linkTypeViewAccount,
    :linkTypeViewTrade,
    :tradeDetailDigests,
    :values
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bulletinId: {:string, :generic},
      firstValue: :integer,
      linkAvailable: :boolean,
      linkTypeViewAccount: :boolean,
      linkTypeViewTrade: :boolean,
      tradeDetailDigests: [{ExAxos.Schema.BulletinTradeDetailDigest, :t}],
      values: [string: :generic]
    ]
  end
end
