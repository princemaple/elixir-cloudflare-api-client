defmodule Cloudflare.MagicGreTunnel do
  use Cloudflare.Doc, "magic_gre_tunnels"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/magic/gre_tunnels",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Bulk-updates multiple GRE tunnels (PUT collection).
  """
  def bulk_update(body, opts \\ []) do
    client(opts).put(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
