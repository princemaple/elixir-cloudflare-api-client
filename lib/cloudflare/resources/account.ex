defmodule Cloudflare.Account do
  use Cloudflare.Doc, "accounts"

  use Restlax.Resource,
    endpoint: "accounts",
    only: [:index, :show, :update]
end
