defmodule ExAxos.TaxFormResultDigest do
  @moduledoc """
  Provides struct and type for a TaxFormResultDigest
  """

  @type t :: %__MODULE__{
          hostKey: String.t() | nil,
          resourceExpiration: String.t() | nil,
          resourceUrl: String.t() | nil,
          taxFormDescription: String.t() | nil,
          taxFormName: String.t() | nil,
          taxFormType: String.t() | nil,
          taxYear: String.t() | nil
        }

  defstruct [
    :hostKey,
    :resourceExpiration,
    :resourceUrl,
    :taxFormDescription,
    :taxFormName,
    :taxFormType,
    :taxYear
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      hostKey: {:string, :generic},
      resourceExpiration: {:string, :generic},
      resourceUrl: {:string, :generic},
      taxFormDescription: {:string, :generic},
      taxFormName: {:string, :generic},
      taxFormType: {:string, :generic},
      taxYear: {:string, :generic}
    ]
  end
end
