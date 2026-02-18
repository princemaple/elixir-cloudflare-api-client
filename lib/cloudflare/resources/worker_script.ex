defmodule Cloudflare.WorkerScript do
  use Cloudflare.Doc, "worker_script"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/scripts",
    only: [:index, :show, :update, :delete]
end
