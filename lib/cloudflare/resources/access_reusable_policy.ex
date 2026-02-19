defmodule Cloudflare.AccessReusablePolicy do
  use Cloudflare.Doc, "access_reusable_policies"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/policies",
    only: [:index, :show, :create, :update, :delete]
end
