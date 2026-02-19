defmodule Cloudflare.ZoneRuleset do
  use Cloudflare.Doc, "zone_rulesets"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/rulesets",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Lists versions of a zone ruleset.
  """
  def versions(ruleset_id, opts \\ []) do
    client(opts).get(
      path_for(ruleset_id, action: "versions"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Adds a new rule to a zone ruleset.
  """
  def create_rule(ruleset_id, body, opts \\ []) do
    client(opts).post(
      path_for(ruleset_id, action: "rules"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
