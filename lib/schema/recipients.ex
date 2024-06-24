defmodule ExAxos.Schema.Recipients do
  @moduledoc """
  Provides struct and type for a Schema.Recipients
  """

  @type t :: %__MODULE__{
          carbonCopies: [ExAxos.Schema.CarbonCopy.t()] | nil,
          certifiedDeliveries: [ExAxos.Schema.CertifiedDelivery.t()] | nil,
          signers: [ExAxos.Schema.Signer.t()] | nil
        }

  defstruct [:carbonCopies, :certifiedDeliveries, :signers]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      carbonCopies: [{ExAxos.Schema.CarbonCopy, :t}],
      certifiedDeliveries: [{ExAxos.Schema.CertifiedDelivery, :t}],
      signers: [{ExAxos.Schema.Signer, :t}]
    ]
  end
end
