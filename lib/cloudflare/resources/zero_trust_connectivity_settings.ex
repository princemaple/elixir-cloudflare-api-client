defmodule Cloudflare.ZeroTrustConnectivitySettings do
  use Cloudflare.Doc, "zero_trust_connectivity_settings"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/zerotrust/connectivity_settings",
    only: []

  # GET /accounts/:account_id/zerotrust/connectivity_settings
  def get(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zerotrust/connectivity_settings",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH /accounts/:account_id/zerotrust/connectivity_settings
  def update(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/zerotrust/connectivity_settings",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
