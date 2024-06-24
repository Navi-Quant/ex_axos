defmodule ExAxos.Schema.SalesforceResponse do
  @moduledoc """
  Provides struct and type for a Schema.SalesforceResponse
  """

  @type t :: %__MODULE__{
          envelopeId: String.t() | nil,
          salesforceCaseResponses: [ExAxos.Schema.SalesforceCaseResponse.t()] | nil
        }

  defstruct [:envelopeId, :salesforceCaseResponses]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      envelopeId: {:string, :generic},
      salesforceCaseResponses: [{ExAxos.Schema.SalesforceCaseResponse, :t}]
    ]
  end
end
