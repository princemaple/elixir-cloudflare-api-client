defmodule Cloudflare.ZeroTrustGatewayPacFile do
  use Cloudflare.Doc, "zero_trust_gateway_pac_files"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/pacfiles",
    only: [:index, :show, :create, :update, :delete]
end
