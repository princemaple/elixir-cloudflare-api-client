defmodule Cloudflare.RateLimit do
  use Cloudflare.Doc, "rate_limits_for_a_zone"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/rate_limits",
    only: [:index, :show, :create, :update, :delete]
end
