defmodule Cloudflare.ZeroTrustSshSettings do
  use Cloudflare.Doc, "zero_trust_ssh_settings"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/audit_ssh_settings",
    only: []

  # GET /accounts/:account_id/gateway/audit_ssh_settings
  def get(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/gateway/audit_ssh_settings",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /accounts/:account_id/gateway/audit_ssh_settings
  def update(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/gateway/audit_ssh_settings",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /accounts/:account_id/gateway/audit_ssh_settings/rotate_seed
  def rotate_seed(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/gateway/audit_ssh_settings/rotate_seed",
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
