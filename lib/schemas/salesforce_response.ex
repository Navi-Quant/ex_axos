defmodule ExAxos.SalesforceResponse do
  @moduledoc """
  Provides struct and type for a SalesforceResponse
  """

  @type t :: %__MODULE__{
          envelopeId: String.t() | nil,
          salesforceCaseResponses: [ExAxos.SalesforceCaseResponse.t()] | nil
        }

  defstruct [:envelopeId, :salesforceCaseResponses]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      envelopeId: {:string, :generic},
      salesforceCaseResponses: [{ExAxos.SalesforceCaseResponse, :t}]
    ]
  end
end
