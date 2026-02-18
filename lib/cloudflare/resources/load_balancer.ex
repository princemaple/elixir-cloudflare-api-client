defmodule Cloudflare.LoadBalancer do
  use Cloudflare.Doc, "load_balancers"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/load_balancers",
    only: [:index, :show, :create, :update, :edit, :delete]
end
