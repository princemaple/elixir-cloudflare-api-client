defmodule Cloudflare.AccountRuleset do
  use Cloudflare.Doc, "account_rulesets"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/rulesets",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Lists rules in a specific version of a ruleset.
  """
  def versions(ruleset_id, opts \\ []) do
    client(opts).get(
      path_for(ruleset_id, action: "versions"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Adds a new rule to a ruleset.
  """
  def create_rule(ruleset_id, body, opts \\ []) do
    client(opts).post(
      path_for(ruleset_id, action: "rules"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
