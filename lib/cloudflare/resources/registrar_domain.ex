defmodule Cloudflare.RegistrarDomain do
  use Cloudflare.Doc, "registrar_domains"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/registrar/domains",
    only: [:index, :show, :update]
end
