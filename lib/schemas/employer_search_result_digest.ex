defmodule ExAxos.EmployerSearchResultDigest do
  @moduledoc """
  Provides struct and type for a EmployerSearchResultDigest
  """

  @type t :: %__MODULE__{
          employerCount: integer | nil,
          employers: [ExAxos.EmployerRestDigest.t()] | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:employerCount, :employers, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      employerCount: :integer,
      employers: [{ExAxos.EmployerRestDigest, :t}],
      message: {:string, :generic},
      status: {:string, :generic}
    ]
  end
end
