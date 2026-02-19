defmodule Cloudflare.GatewayRule do
  use Cloudflare.Doc, "zero_trust_gateway_rules"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/rules",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Resets the expiration of a Zero Trust Gateway rule.
  """
  def reset_expiration(rule_id, opts \\ []) do
    client(opts).post(
      path_for(rule_id, action: "reset_expiration"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
