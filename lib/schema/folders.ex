defmodule ExAxos.Schema.Folders do
  @moduledoc """
  Provides struct and type for a Schema.Folders
  """

  @type t :: %__MODULE__{folders: [ExAxos.Schema.Folder.t()] | nil}

  defstruct [:folders]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [folders: [{ExAxos.Schema.Folder, :t}]]
  end
end
