defmodule Cloudflare.WorkerDeployment do
  use Cloudflare.Doc, "worker_deployments"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/scripts/:script_name/deployments",
    only: [:index, :show, :create, :delete]
end
