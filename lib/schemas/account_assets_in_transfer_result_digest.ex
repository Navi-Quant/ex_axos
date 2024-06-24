defmodule ExAxos.AccountAssetsInTransferResultDigest do
  @moduledoc """
  Provides struct and type for a AccountAssetsInTransferResultDigest
  """

  @type t :: %__MODULE__{
          accountName: String.t() | nil,
          accountNumber: String.t() | nil,
          assetsInTransfer: [ExAxos.AccountAssetsInTransferDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:accountName, :accountNumber, :assetsInTransfer, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountName: {:string, :generic},
      accountNumber: {:string, :generic},
      assetsInTransfer: [{ExAxos.AccountAssetsInTransferDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
