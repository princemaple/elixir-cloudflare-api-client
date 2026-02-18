defmodule Cloudflare.WorkerRoute do
  use Cloudflare.Doc, "worker_routes"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/workers/routes",
    only: [:index, :show, :create, :update, :delete]
end
