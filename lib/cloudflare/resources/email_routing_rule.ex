defmodule Cloudflare.EmailRoutingRule do
  use Cloudflare.Doc, "email_routing_routing_rules"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/email/routing/rules",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Gets the catch-all routing rule.
  """
  def catch_all(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "catch_all"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Updates the catch-all routing rule.
  """
  def update_catch_all(body, opts \\ []) do
    client(opts).put(
      path_for(nil, action: "catch_all"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
