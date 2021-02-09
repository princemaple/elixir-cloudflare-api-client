defmodule Cloudflare.Client do
  use Restlax.Client,
    adapter: Tesla.Adapter.Mint,
    base_url: "https://api.cloudflare.com/client/v4"
end
