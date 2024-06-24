defmodule ExAxos.Recipients do
  @moduledoc """
  Provides struct and type for a Recipients
  """

  @type t :: %__MODULE__{
          carbonCopies: [ExAxos.CarbonCopy.t()] | nil,
          certifiedDeliveries: [ExAxos.CertifiedDelivery.t()] | nil,
          signers: [ExAxos.Signer.t()] | nil
        }

  defstruct [:carbonCopies, :certifiedDeliveries, :signers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      carbonCopies: [{ExAxos.CarbonCopy, :t}],
      certifiedDeliveries: [{ExAxos.CertifiedDelivery, :t}],
      signers: [{ExAxos.Signer, :t}]
    ]
  end
end
