defmodule ExAxos.Schema.Tabs do
  @moduledoc """
  Provides struct and type for a Schema.Tabs
  """

  @type t :: %__MODULE__{
          approveTabs: [ExAxos.Schema.ApproveTab.t()] | nil,
          checkboxTabs: [ExAxos.Schema.CheckboxTab.t()] | nil,
          companyTabs: [ExAxos.Schema.CompanyTab.t()] | nil,
          dateSignedTabs: [ExAxos.Schema.DateSignedTab.t()] | nil,
          dateTabs: [ExAxos.Schema.DateTab.t()] | nil,
          declineTabs: [ExAxos.Schema.DeclineTab.t()] | nil,
          emailAddressTabs: [ExAxos.Schema.EmailAddressTab.t()] | nil,
          emailTabs: [ExAxos.Schema.EmailTab.t()] | nil,
          envelopeIdTabs: [ExAxos.Schema.EnvelopeIdTab.t()] | nil,
          firstNameTabs: [ExAxos.Schema.FirstNameTab.t()] | nil,
          formulaTabs: [ExAxos.Schema.FormulaTab.t()] | nil,
          fullNameTabs: [ExAxos.Schema.FullNameTab.t()] | nil,
          initialHereTabs: [ExAxos.Schema.InitialHereTab.t()] | nil,
          lastNameTabs: [ExAxos.Schema.LastNameTab.t()] | nil,
          listTabs: [ExAxos.Schema.ListTab.t()] | nil,
          noteTabs: [ExAxos.Schema.NoteTab.t()] | nil,
          numberTabs: [ExAxos.Schema.NumberTab.t()] | nil,
          radioGroupTabs: [ExAxos.Schema.RadioGroupTab.t()] | nil,
          signHereTabs: [ExAxos.Schema.SignHereTab.t()] | nil,
          signerAttachmentTabs: [ExAxos.Schema.SignerAttachmentTab.t()] | nil,
          ssnTabs: [ExAxos.Schema.SsnTab.t()] | nil,
          textTabs: [ExAxos.Schema.TextTab.t()] | nil,
          titleTabs: [ExAxos.Schema.TitleTab.t()] | nil,
          zipTabs: [ExAxos.Schema.ZipTab.t()] | nil
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
      approveTabs: [{ExAxos.Schema.ApproveTab, :t}],
      checkboxTabs: [{ExAxos.Schema.CheckboxTab, :t}],
      companyTabs: [{ExAxos.Schema.CompanyTab, :t}],
      dateSignedTabs: [{ExAxos.Schema.DateSignedTab, :t}],
      dateTabs: [{ExAxos.Schema.DateTab, :t}],
      declineTabs: [{ExAxos.Schema.DeclineTab, :t}],
      emailAddressTabs: [{ExAxos.Schema.EmailAddressTab, :t}],
      emailTabs: [{ExAxos.Schema.EmailTab, :t}],
      envelopeIdTabs: [{ExAxos.Schema.EnvelopeIdTab, :t}],
      firstNameTabs: [{ExAxos.Schema.FirstNameTab, :t}],
      formulaTabs: [{ExAxos.Schema.FormulaTab, :t}],
      fullNameTabs: [{ExAxos.Schema.FullNameTab, :t}],
      initialHereTabs: [{ExAxos.Schema.InitialHereTab, :t}],
      lastNameTabs: [{ExAxos.Schema.LastNameTab, :t}],
      listTabs: [{ExAxos.Schema.ListTab, :t}],
      noteTabs: [{ExAxos.Schema.NoteTab, :t}],
      numberTabs: [{ExAxos.Schema.NumberTab, :t}],
      radioGroupTabs: [{ExAxos.Schema.RadioGroupTab, :t}],
      signHereTabs: [{ExAxos.Schema.SignHereTab, :t}],
      signerAttachmentTabs: [{ExAxos.Schema.SignerAttachmentTab, :t}],
      ssnTabs: [{ExAxos.Schema.SsnTab, :t}],
      textTabs: [{ExAxos.Schema.TextTab, :t}],
      titleTabs: [{ExAxos.Schema.TitleTab, :t}],
      zipTabs: [{ExAxos.Schema.ZipTab, :t}]
    ]
  end
end
