defmodule Cloudflare.TunnelVirtualNetwork do
  use Cloudflare.Doc, "tunnel_virtual_network"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/teamnet/virtual_networks",
    only: [:index, :show, :create, :delete],
    update_method: :patch

  @doc """
  Updates a virtual network (PATCH).
  """
  def update(vnet_id, body, opts \\ []) do
    client(opts).patch(
      path_for(vnet_id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
