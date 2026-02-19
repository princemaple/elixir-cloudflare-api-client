defmodule Cloudflare.FirewallRule do
  use Cloudflare.Doc, "firewall_rules"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/firewall/rules",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Updates the priority of existing firewall rules (PATCH collection).
  """
  def update_priority(body, opts \\ []) do
    client(opts).patch(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
