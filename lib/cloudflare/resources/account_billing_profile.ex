defmodule Cloudflare.AccountBillingProfile do
  use Cloudflare.Doc, "account_billing_profile"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/billing/profile",
    only: [:show],
    singular: true
end
