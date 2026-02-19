defmodule Cloudflare.OriginCa do
  use Cloudflare.Doc, "origin_ca"

  use Restlax.Resource,
    endpoint: "certificates",
    only: [:index, :show, :create, :delete]
end
