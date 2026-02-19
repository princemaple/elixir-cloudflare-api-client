defmodule Cloudflare.AIGatewayDataset do
  use Cloudflare.Doc, "ai_gateway_datasets"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-gateway/gateways/:gateway_id/datasets",
    only: [:index, :show, :create, :update, :delete]
end
