defmodule ExAxos.Schema.StatementResultDigest do
  @moduledoc """
  Provides struct and type for a Schema.StatementResultDigest
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          resourceExpiration: String.t() | nil,
          resourceUrl: String.t() | nil,
          statementDate: String.t() | nil,
          statementDescription: String.t() | nil,
          statementName: String.t() | nil
        }

  defstruct [
    :id,
    :resourceExpiration,
    :resourceUrl,
    :statementDate,
    :statementDescription,
    :statementName
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: {:string, :generic},
      resourceExpiration: {:string, :generic},
      resourceUrl: {:string, :generic},
      statementDate: {:string, :generic},
      statementDescription: {:string, :generic},
      statementName: {:string, :generic}
    ]
  end
end
