defmodule Cloudflare.ZeroTrustSeat do
  use Cloudflare.Doc, "zero_trust_seats"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/seats",
    only: []

  # PATCH /accounts/:account_id/access/seats (bulk update)
  def update(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/access/seats",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
