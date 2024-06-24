defmodule ExAxos.Folders do
  @moduledoc """
  Provides struct and type for a Folders
  """

  @type t :: %__MODULE__{folders: [ExAxos.Folder.t()] | nil}

  defstruct [:folders]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [folders: [{ExAxos.Folder, :t}]]
  end
end
