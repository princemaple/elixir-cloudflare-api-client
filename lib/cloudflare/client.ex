defmodule Cloudflare.Client do
  use Restlax.Client,
    base_url: "https://api.cloudflare.com/client/v4"

  plug Cloudflare.Auth

  def init do
    :persistent_term.put({:cloudflare, :client}, Cloudflare.Client)
  end
end
