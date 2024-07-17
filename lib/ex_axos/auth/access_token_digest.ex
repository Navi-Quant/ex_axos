defmodule ExAxos.Auth.AccessTokenDigest do
  @moduledoc false
  @type t :: %__MODULE__{
          access_token: String.t(),
          expires_in: integer(),
          refresh_token: String.t(),
          scope: String.t(),
          token_type: String.t()
        }

  defstruct [
    :access_token,
    :expires_in,
    :refresh_token,
    :scope,
    :token_type
  ]

  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      access_token: {:string, :generic},
      expires_in: :integer,
      refresh_token: {:string, :generic},
      scope: {:string, :generic},
      token_type: {:string, :generic}
    ]
  end
end
