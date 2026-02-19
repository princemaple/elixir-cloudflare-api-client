defmodule Cloudflare.MagicIpsecTunnel do
  use Cloudflare.Doc, "magic_ipsec_tunnels"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/magic/ipsec_tunnels",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Bulk-updates multiple IPsec tunnels (PUT collection).
  """
  def bulk_update(body, opts \\ []) do
    client(opts).put(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Generates a Pre Shared Key (PSK) for an IPsec tunnel.
  """
  def generate_psk(tunnel_id, opts \\ []) do
    client(opts).post(
      path_for(tunnel_id, action: "psk_generate"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
