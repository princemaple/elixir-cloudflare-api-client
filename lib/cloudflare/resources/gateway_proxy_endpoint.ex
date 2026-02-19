defmodule Cloudflare.GatewayProxyEndpoint do
  use Cloudflare.Doc, "zero_trust_gateway_proxy_endpoints"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/proxy_endpoints",
    only: [:index, :show, :create, :delete],
    update_method: :patch

  @doc """
  Updates a Gateway proxy endpoint (PATCH).
  """
  def update(endpoint_id, body, opts \\ []) do
    client(opts).patch(
      path_for(endpoint_id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
