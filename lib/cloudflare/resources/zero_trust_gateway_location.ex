defmodule Cloudflare.ZeroTrustGatewayLocation do
  use Cloudflare.Doc, "zero_trust_gateway_locations"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/locations",
    only: [:index, :show, :create, :update, :delete]
end
