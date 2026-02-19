defmodule Cloudflare.ZoneLockdown do
  use Cloudflare.Doc, "zone_lockdown"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/firewall/lockdowns",
    only: [:index, :show, :create, :update, :delete]
end
