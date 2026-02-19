defmodule Cloudflare.WorkerVersion do
  use Cloudflare.Doc, "worker_versions"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/scripts/:script_name/versions",
    only: [:index, :show, :create]
end
