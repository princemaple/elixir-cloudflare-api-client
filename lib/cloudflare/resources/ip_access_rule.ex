defmodule Cloudflare.IpAccessRule do
  use Cloudflare.Doc, "ip_access_rules_for_a_zone"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/firewall/access_rules/rules",
    only: [:index, :create, :edit, :delete]
end
