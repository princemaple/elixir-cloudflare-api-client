defmodule Cloudflare.WafPackage do
  use Cloudflare.Doc, "waf_packages"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/firewall/waf/packages",
    only: [:index, :show, :edit]
end
