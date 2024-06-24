defmodule ExAxos.Folder do
  @moduledoc """
  Provides struct and type for a Folder
  """

  @type t :: %__MODULE__{
          folderId: String.t() | nil,
          folderItems: [ExAxos.FolderItem.t()] | nil,
          hasSubFolders: String.t() | nil,
          itemCount: String.t() | nil,
          name: String.t() | nil,
          owner: ExAxos.Owner.t() | nil,
          subFolderCount: String.t() | nil,
          type: String.t() | nil,
          uri: String.t() | nil
        }

  defstruct [
    :folderId,
    :folderItems,
    :hasSubFolders,
    :itemCount,
    :name,
    :owner,
    :subFolderCount,
    :type,
    :uri
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      folderId: {:string, :generic},
      folderItems: [{ExAxos.FolderItem, :t}],
      hasSubFolders: {:string, :generic},
      itemCount: {:string, :generic},
      name: {:string, :generic},
      owner: {ExAxos.Owner, :t},
      subFolderCount: {:string, :generic},
      type: {:string, :generic},
      uri: {:string, :generic}
    ]
  end
end
