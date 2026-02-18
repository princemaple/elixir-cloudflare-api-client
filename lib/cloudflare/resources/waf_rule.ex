defmodule Cloudflare.WafRule do
  use Cloudflare.Doc, "waf_rules"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/firewall/waf/packages/:package_id/rules",
    only: [:index, :show, :edit]
end
