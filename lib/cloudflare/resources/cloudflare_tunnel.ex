defmodule Cloudflare.CloudflareTunnel do
  use Cloudflare.Doc, "cloudflare_tunnel"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/cfd_tunnel",
    update_method: :patch,
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Lists connections for a Cloudflare Tunnel.
  """
  def connections(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "connections"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Cleans up (removes) connections for a Cloudflare Tunnel.
  """
  def clean_connections(id, opts \\ []) do
    client(opts).delete(
      path_for(id, action: "connections"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets the token used to associate cloudflared with a specific tunnel.
  """
  def token(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "token"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
