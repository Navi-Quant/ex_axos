defmodule ExAxos.Schema.SalesforceCaseRequest do
  @moduledoc """
  Provides struct and type for a Schema.SalesforceCaseRequest
  """

  @type t :: %__MODULE__{
          contentDataRequests: [ExAxos.Schema.ContentDataRequestVO.t()] | nil,
          envelopeId: String.t() | nil,
          origin: String.t() | nil,
          senderEmail: String.t() | nil,
          senderUserName: String.t() | nil,
          userLogin: String.t() | nil
        }

  defstruct [
    :contentDataRequests,
    :envelopeId,
    :origin,
    :senderEmail,
    :senderUserName,
    :userLogin
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      contentDataRequests: [{ExAxos.Schema.ContentDataRequestVO, :t}],
      envelopeId: {:string, :generic},
      origin: {:string, :generic},
      senderEmail: {:string, :generic},
      senderUserName: {:string, :generic},
      userLogin: {:string, :generic}
    ]
  end
end
