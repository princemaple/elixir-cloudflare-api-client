defmodule Cloudflare.Hyperdrive do
  use Cloudflare.Doc, "hyperdrive"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/hyperdrive/configs",
    only: [:index, :show, :create, :update, :delete]
end
