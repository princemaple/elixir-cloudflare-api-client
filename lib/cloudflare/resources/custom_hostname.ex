defmodule Cloudflare.CustomHostname do
  use Cloudflare.Doc, "custom_hostname_for_a_zone"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/custom_hostnames",
    only: [:index, :show, :create, :edit, :delete]
end
