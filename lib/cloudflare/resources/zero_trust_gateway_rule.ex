defmodule Cloudflare.ZeroTrustGatewayRule do
  use Cloudflare.Doc, "zero_trust_gateway_rules"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/rules",
    only: [:index, :show, :create, :update, :delete]

  # GET /accounts/:account_id/gateway/rules/tenant
  def tenant_rules(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/gateway/rules/tenant",
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /accounts/:account_id/gateway/rules/:rule_id/reset_expiration
  def reset_expiration(rule_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/gateway/rules/#{rule_id}/reset_expiration",
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
