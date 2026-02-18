defmodule Cloudflare.HealthCheck do
  use Cloudflare.Doc, "health_checks"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/healthchecks",
    only: [:index, :show, :create, :update, :edit, :delete]
end
