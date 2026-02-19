defmodule Cloudflare.TunnelRoute do
  use Cloudflare.Doc, "tunnel_routing"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/teamnet/routes",
    only: [:index, :show, :create, :delete],
    update_method: :patch

  @doc """
  Updates a tunnel route by ID (PATCH).
  """
  def update(route_id, body, opts \\ []) do
    client(opts).patch(
      path_for(route_id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Fetches tunnel routes that contain a specific IP address.
  """
  def by_ip(ip, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/teamnet/routes/ip/#{ip}",
      Restlax.Resource.handle_options(opts)
    )
  end
end
