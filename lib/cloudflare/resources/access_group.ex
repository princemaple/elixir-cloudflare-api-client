defmodule Cloudflare.AccessGroup do
  use Cloudflare.Doc, "access_groups"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/groups",
    only: [:index, :show, :create, :update, :delete]
end
