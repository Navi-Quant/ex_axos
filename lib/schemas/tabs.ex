defmodule ExAxos.Tabs do
  @moduledoc """
  Provides struct and type for a Tabs
  """

  @type t :: %__MODULE__{
          approveTabs: [ExAxos.ApproveTab.t()] | nil,
          checkboxTabs: [ExAxos.CheckboxTab.t()] | nil,
          companyTabs: [ExAxos.CompanyTab.t()] | nil,
          dateSignedTabs: [ExAxos.DateSignedTab.t()] | nil,
          dateTabs: [ExAxos.DateTab.t()] | nil,
          declineTabs: [ExAxos.DeclineTab.t()] | nil,
          emailAddressTabs: [ExAxos.EmailAddressTab.t()] | nil,
          emailTabs: [ExAxos.EmailTab.t()] | nil,
          envelopeIdTabs: [ExAxos.EnvelopeIdTab.t()] | nil,
          firstNameTabs: [ExAxos.FirstNameTab.t()] | nil,
          formulaTabs: [ExAxos.FormulaTab.t()] | nil,
          fullNameTabs: [ExAxos.FullNameTab.t()] | nil,
          initialHereTabs: [ExAxos.InitialHereTab.t()] | nil,
          lastNameTabs: [ExAxos.LastNameTab.t()] | nil,
          listTabs: [ExAxos.ListTab.t()] | nil,
          noteTabs: [ExAxos.NoteTab.t()] | nil,
          numberTabs: [ExAxos.NumberTab.t()] | nil,
          radioGroupTabs: [ExAxos.RadioGroupTab.t()] | nil,
          signHereTabs: [ExAxos.SignHereTab.t()] | nil,
          signerAttachmentTabs: [ExAxos.SignerAttachmentTab.t()] | nil,
          ssnTabs: [ExAxos.SsnTab.t()] | nil,
          textTabs: [ExAxos.TextTab.t()] | nil,
          titleTabs: [ExAxos.TitleTab.t()] | nil,
          zipTabs: [ExAxos.ZipTab.t()] | nil
        }

  defstruct [
    :approveTabs,
    :checkboxTabs,
    :companyTabs,
    :dateSignedTabs,
    :dateTabs,
    :declineTabs,
    :emailAddressTabs,
    :emailTabs,
    :envelopeIdTabs,
    :firstNameTabs,
    :formulaTabs,
    :fullNameTabs,
    :initialHereTabs,
    :lastNameTabs,
    :listTabs,
    :noteTabs,
    :numberTabs,
    :radioGroupTabs,
    :signHereTabs,
    :signerAttachmentTabs,
    :ssnTabs,
    :textTabs,
    :titleTabs,
    :zipTabs
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      approveTabs: [{ExAxos.ApproveTab, :t}],
      checkboxTabs: [{ExAxos.CheckboxTab, :t}],
      companyTabs: [{ExAxos.CompanyTab, :t}],
      dateSignedTabs: [{ExAxos.DateSignedTab, :t}],
      dateTabs: [{ExAxos.DateTab, :t}],
      declineTabs: [{ExAxos.DeclineTab, :t}],
      emailAddressTabs: [{ExAxos.EmailAddressTab, :t}],
      emailTabs: [{ExAxos.EmailTab, :t}],
      envelopeIdTabs: [{ExAxos.EnvelopeIdTab, :t}],
      firstNameTabs: [{ExAxos.FirstNameTab, :t}],
      formulaTabs: [{ExAxos.FormulaTab, :t}],
      fullNameTabs: [{ExAxos.FullNameTab, :t}],
      initialHereTabs: [{ExAxos.InitialHereTab, :t}],
      lastNameTabs: [{ExAxos.LastNameTab, :t}],
      listTabs: [{ExAxos.ListTab, :t}],
      noteTabs: [{ExAxos.NoteTab, :t}],
      numberTabs: [{ExAxos.NumberTab, :t}],
      radioGroupTabs: [{ExAxos.RadioGroupTab, :t}],
      signHereTabs: [{ExAxos.SignHereTab, :t}],
      signerAttachmentTabs: [{ExAxos.SignerAttachmentTab, :t}],
      ssnTabs: [{ExAxos.SsnTab, :t}],
      textTabs: [{ExAxos.TextTab, :t}],
      titleTabs: [{ExAxos.TitleTab, :t}],
      zipTabs: [{ExAxos.ZipTab, :t}]
    ]
  end
end
