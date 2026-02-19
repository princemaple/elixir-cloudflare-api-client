defmodule Cloudflare.ZeroTrustHostnameRoute do
  use Cloudflare.Doc, "zero_trust_hostname_route"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/zerotrust/routes/hostname",
    update_method: :patch,
    only: [:index, :show, :create, :update, :delete]
end
