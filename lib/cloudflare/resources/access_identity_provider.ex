defmodule Cloudflare.AccessIdentityProvider do
  use Cloudflare.Doc, "access_identity_providers"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/identity_providers",
    only: [:index, :show, :create, :update, :delete]
end
