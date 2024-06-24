defmodule ExAxos.ElectronicSignatureSettingsAPI do
  @moduledoc """
  Provides API endpoints related to electronic signature settings api
  """

  @default_client ExAxos.Client

  @doc """
  Retrieve Envelope Account Forms

  Retrieves a list of account forms that are available to use in the eSignature process.
  """
  @spec retrieve_envelope_account_forms_using_get(String.t(), keyword) ::
          {:ok, ExAxos.EnvelopeSettingsAccountFormsDigest.t()} | :error
  def retrieve_envelope_account_forms_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettingsAPI, :retrieve_envelope_account_forms_using_get},
      url: "/rest/esignature/v1/envelopeSettings/accountForms/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.EnvelopeSettingsAccountFormsDigest, :t}},
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
  @spec retrieve_envelope_advisor_templates_using_get(String.t(), keyword) ::
          {:ok, ExAxos.EnvelopeSettingsAccountFormsDigest.t()} | :error
  def retrieve_envelope_advisor_templates_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call:
        {ExAxos.ElectronicSignatureSettingsAPI, :retrieve_envelope_advisor_templates_using_get},
      url: "/rest/esignature/v1/envelopeSettings/advisorTemplates/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.EnvelopeSettingsAccountFormsDigest, :t}},
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
  @spec retrieve_envelope_proposal_using_get(String.t(), keyword) ::
          {:ok, ExAxos.EnvelopeSettingsProposalDigest.t()} | :error
  def retrieve_envelope_proposal_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettingsAPI, :retrieve_envelope_proposal_using_get},
      url: "/rest/esignature/v1/envelopeSettings/proposals/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.EnvelopeSettingsProposalDigest, :t}},
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
  @spec retrieve_envelope_recipients_using_get(String.t(), keyword) ::
          {:ok, ExAxos.EnvelopeSettingsRecipientsDigest.t()} | :error
  def retrieve_envelope_recipients_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettingsAPI, :retrieve_envelope_recipients_using_get},
      url: "/rest/esignature/v1/envelopeSettings/recipients/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.EnvelopeSettingsRecipientsDigest, :t}},
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
  @spec retrieve_envelope_settings_using_get(String.t(), keyword) ::
          {:ok, ExAxos.EnvelopeSettingsDigest.t()} | :error
  def retrieve_envelope_settings_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettingsAPI, :retrieve_envelope_settings_using_get},
      url: "/rest/esignature/v1/envelopeSettings/#{accountNumber}",
      method: :get,
      response: [
        {200, {ExAxos.EnvelopeSettingsDigest, :t}},
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
  @spec retrieve_templates_locked_using_get(String.t(), keyword) ::
          {:ok, ExAxos.DocusignFormDigest.t()} | :error
  def retrieve_templates_locked_using_get(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:templateLocked])

    client.request(%{
      args: [accountNumber: accountNumber],
      call: {ExAxos.ElectronicSignatureSettingsAPI, :retrieve_templates_locked_using_get},
      url: "/rest/esignature/v1/docusign/templates/#{accountNumber}",
      method: :get,
      query: query,
      response: [{200, {ExAxos.DocusignFormDigest, :t}}, {401, :null}, {403, :null}, {404, :null}],
      opts: opts
    })
  end

  @doc """
  Unlocks all templates recipients signers templateLocked
  """
  @spec update_all_signers_template_locked_using_put(String.t(), keyword) ::
          {:ok, ExAxos.RestResultDigest.t()} | :error
  def update_all_signers_template_locked_using_put(accountNumber, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber],
      call:
        {ExAxos.ElectronicSignatureSettingsAPI, :update_all_signers_template_locked_using_put},
      url: "/rest/esignature/v1/docusign/templates/#{accountNumber}/unlocksigners",
      method: :put,
      response: [
        {200, {ExAxos.RestResultDigest, :t}},
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
  @spec update_recipients_signers_using_put(String.t(), String.t(), keyword) ::
          {:ok, ExAxos.RestResultDigest.t()} | :error
  def update_recipients_signers_using_put(accountNumber, templateId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [accountNumber: accountNumber, templateId: templateId],
      call: {ExAxos.ElectronicSignatureSettingsAPI, :update_recipients_signers_using_put},
      url:
        "/rest/esignature/v1/docusign/templates/#{accountNumber}/unlocktemplatesigners/#{templateId}",
      method: :put,
      response: [
        {200, {ExAxos.RestResultDigest, :t}},
        {201, :null},
        {401, :null},
        {403, :null},
        {404, :null}
      ],
      opts: opts
    })
  end
end
