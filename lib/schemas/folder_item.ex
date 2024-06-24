defmodule ExAxos.FolderItem do
  @moduledoc """
  Provides struct and type for a FolderItem
  """

  @type t :: %__MODULE__{
          completedDateTime: String.t() | nil,
          createdDateTime: String.t() | nil,
          envelopeId: String.t() | nil,
          envelopeUri: String.t() | nil,
          is21CFRPart11: String.t() | nil,
          ownerName: String.t() | nil,
          recipientsUri: String.t() | nil,
          senderCompany: String.t() | nil,
          senderEmail: String.t() | nil,
          senderName: String.t() | nil,
          sentDateTime: String.t() | nil,
          status: String.t() | nil,
          subject: String.t() | nil
        }

  defstruct [
    :completedDateTime,
    :createdDateTime,
    :envelopeId,
    :envelopeUri,
    :is21CFRPart11,
    :ownerName,
    :recipientsUri,
    :senderCompany,
    :senderEmail,
    :senderName,
    :sentDateTime,
    :status,
    :subject
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      completedDateTime: {:string, :generic},
      createdDateTime: {:string, :generic},
      envelopeId: {:string, :generic},
      envelopeUri: {:string, :generic},
      is21CFRPart11: {:string, :generic},
      ownerName: {:string, :generic},
      recipientsUri: {:string, :generic},
      senderCompany: {:string, :generic},
      senderEmail: {:string, :generic},
      senderName: {:string, :generic},
      sentDateTime: {:string, :generic},
      status: {:string, :generic},
      subject: {:string, :generic}
    ]
  end
end
