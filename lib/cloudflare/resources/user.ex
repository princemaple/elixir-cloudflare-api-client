defmodule Cloudflare.User do
  use Cloudflare.Doc, "user"

  use Restlax.Resource,
    endpoint: "user",
    update_method: :patch,
    singular: true
end
