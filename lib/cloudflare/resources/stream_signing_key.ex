defmodule Cloudflare.StreamSigningKey do
  use Cloudflare.Doc, "stream_signing_keys"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/stream/keys",
    only: [:index, :create, :delete]
end
