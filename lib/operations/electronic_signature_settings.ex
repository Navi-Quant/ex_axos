defmodule ExAxos.ElectronicSignatureSettings do
  @moduledoc """
  Provides API endpoints related to electronic signature settings
  """

  @default_client ExAxos.Client

  @doc """
  Retrieve Envelope Account Forms

  Retrieves a list of account forms that are available to use in the eSignature process.
  """
  @spec retrieve_envelope_account_forms(String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSettingsAccountFormsDigest.t()} | :error
  def retrieve_envelope_account_forms(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettings, :retrieve_envelope_account_forms},
      url: "/rest/esignature/v1/envelopeSettings/accountForms/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EnvelopeSettingsAccountFormsDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Envelope Advisor templates

  Retrieves a list of personal templates that are available to use in the eSignature process.
  """
  @spec retrieve_envelope_advisor_templates(String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSettingsAccountFormsDigest.t()} | :error
  def retrieve_envelope_advisor_templates(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettings, :retrieve_envelope_advisor_templates},
      url: "/rest/esignature/v1/envelopeSettings/advisorTemplates/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EnvelopeSettingsAccountFormsDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Envelope Proposal

  Retrieves a list of proposals that are available to use in the eSignature process.
  """
  @spec retrieve_envelope_proposal(String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSettingsProposalDigest.t()} | :error
  def retrieve_envelope_proposal(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettings, :retrieve_envelope_proposal},
      url: "/rest/esignature/v1/envelopeSettings/proposals/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EnvelopeSettingsProposalDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Envelope Recipients

  Retrieves a list of recipients that are available to use in the eSignature process.
  """
  @spec retrieve_envelope_recipients(String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSettingsRecipientsDigest.t()} | :error
  def retrieve_envelope_recipients(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettings, :retrieve_envelope_recipients},
      url: "/rest/esignature/v1/envelopeSettings/recipients/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EnvelopeSettingsRecipientsDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieve Envelope Settings

  Retrieves all of the eSignature settings that are available to build a request for an account. Included are the available account forms, recipients, and proposals.
  """
  @spec retrieve_envelope_settings(String.t(), keyword) ::
          {:ok, ExAxos.Schema.EnvelopeSettingsDigest.t()} | :error
  def retrieve_envelope_settings(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettings, :retrieve_envelope_settings},
      url: "/rest/esignature/v1/envelopeSettings/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.Schema.EnvelopeSettingsDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Retrieves DocuSign Templates filtered by the Template Locked attribute

  ## Options

    * `templateLocked`: templateLocked

  """
  @spec retrieves_docusign_templates_filtered_by_template_locked_attribute(String.t(), keyword) ::
          {:ok, ExAxos.Schema.DocusignFormDigest.t()} | :error
  def retrieves_docusign_templates_filtered_by_template_locked_attribute(
        accountNumber,
        opts \\ []
      ) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:templateLocked])

    client.request(%{
      args: [accountNumber: accountNumber],
      call:
        {ExAxos.ElectronicSignatureSettings,
         :retrieves_docusign_templates_filtered_by_template_locked_attribute},
      url: "/rest/esignature/v1/docusign/templates/#{accountNumber}",
      method: :get,
      query: query,
      response: [
        {200, {ExAxos.Schema.DocusignFormDigest, :t}},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Unlocks all templates recipients signers templateLocked
  """
  @spec unlocks_all_templates_recipients_signers_templatelocked(String.t(), keyword) ::
          {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def unlocks_all_templates_recipients_signers_templatelocked(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call:
        {ExAxos.ElectronicSignatureSettings,
         :unlocks_all_templates_recipients_signers_templatelocked},
      url: "/rest/esignature/v1/docusign/templates/#{accountNumber}/unlocksigners",
      method: :put,
      response: [
        {200, {ExAxos.Schema.RestResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end

  @doc """
  Unlocks the corresponding template id recipients signers templateLocked
  """
  @spec unlocks_corresponding_template_id_recipients_signers_templatelocked(
          String.t(),
          String.t(),
          keyword
        ) :: {:ok, ExAxos.Schema.RestResultDigest.t()} | :error
  def unlocks_corresponding_template_id_recipients_signers_templatelocked(
        accountNumber,
        templateId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, templateId: templateId],
      call:
        {ExAxos.ElectronicSignatureSettings,
         :unlocks_corresponding_template_id_recipients_signers_templatelocked},
      url:
        "/rest/esignature/v1/docusign/templates/#{accountNumber}/unlocktemplatesigners/#{templateId}",
      method: :put,
      response: [
        {200, {ExAxos.Schema.RestResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
