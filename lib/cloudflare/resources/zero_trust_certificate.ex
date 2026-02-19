defmodule Cloudflare.ZeroTrustCertificate do
  use Cloudflare.Doc, "zero_trust_certificates"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/certificates",
    only: [:index, :show, :create, :delete]

  # POST /accounts/:account_id/gateway/certificates/:certificate_id/activate
  def activate(certificate_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/gateway/certificates/#{certificate_id}/activate",
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /accounts/:account_id/gateway/certificates/:certificate_id/deactivate
  def deactivate(certificate_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/gateway/certificates/#{certificate_id}/deactivate",
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
