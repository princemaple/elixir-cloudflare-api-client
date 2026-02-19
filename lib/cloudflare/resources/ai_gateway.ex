defmodule Cloudflare.AIGateway do
  use Cloudflare.Doc, "ai_gateway_gateways"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-gateway/gateways",
    only: [:index, :show, :create, :update, :delete]
end
