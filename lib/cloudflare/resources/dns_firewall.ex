defmodule Cloudflare.DnsFirewall do
  use Cloudflare.Doc, "dns_firewall"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/dns_firewall",
    only: [:index, :show, :create, :delete],
    update_method: :patch

  @doc """
  Updates (PATCH) a DNS Firewall cluster configuration.
  """
  def update(cluster_id, body, opts \\ []) do
    client(opts).patch(
      path_for(cluster_id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets reverse DNS (PTR records) for a DNS Firewall cluster.
  """
  def reverse_dns(cluster_id, opts \\ []) do
    client(opts).get(
      path_for(cluster_id, action: "reverse_dns"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Updates reverse DNS (PTR records) for a DNS Firewall cluster (PATCH).
  """
  def update_reverse_dns(cluster_id, body, opts \\ []) do
    client(opts).patch(
      path_for(cluster_id, action: "reverse_dns"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
