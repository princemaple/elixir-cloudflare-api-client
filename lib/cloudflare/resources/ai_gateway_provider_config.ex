defmodule Cloudflare.AIGatewayProviderConfig do
  use Cloudflare.Doc, "ai_gateway_provider_configs"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-gateway/gateways/:gateway_id/provider_configs",
    only: [:index, :create, :update, :delete]
end
