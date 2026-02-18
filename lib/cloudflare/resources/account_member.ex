defmodule Cloudflare.AccountMember do
  use Cloudflare.Doc, "account_members"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/members",
    only: [:index, :show, :create, :update, :delete]
end
