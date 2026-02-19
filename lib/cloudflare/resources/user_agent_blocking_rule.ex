defmodule Cloudflare.UserAgentBlockingRule do
  use Cloudflare.Doc, "user_agent_blocking_rules"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/firewall/ua_rules",
    only: [:index, :show, :create, :update, :delete]
end
