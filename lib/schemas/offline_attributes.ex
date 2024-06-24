defmodule ExAxos.OfflineAttributes do
  @moduledoc """
  Provides struct and type for a OfflineAttributes
  """

  @type t :: %__MODULE__{
          accountEsignId: String.t() | nil,
          deviceModel: String.t() | nil,
          deviceName: String.t() | nil,
          gpsLatitude: String.t() | nil,
          gpsLongitude: String.t() | nil
        }

  defstruct [:accountEsignId, :deviceModel, :deviceName, :gpsLatitude, :gpsLongitude]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountEsignId: {:string, :generic},
      deviceModel: {:string, :generic},
      deviceName: {:string, :generic},
      gpsLatitude: {:string, :generic},
      gpsLongitude: {:string, :generic}
    ]
  end
end
