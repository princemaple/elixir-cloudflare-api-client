defmodule Cloudflare.User do
  @moduledoc Cloudflare.docs("user")

  use Restlax.Resource,
    endpoint: "user",
    update_method: :patch,
    singular: true
end
