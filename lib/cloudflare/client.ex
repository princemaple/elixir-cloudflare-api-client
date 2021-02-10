defmodule Cloudflare.Client do
  use Restlax.Client,
    base_url: "https://api.cloudflare.com/client/v4"
end
