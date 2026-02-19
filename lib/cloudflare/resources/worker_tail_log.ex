defmodule Cloudflare.WorkerTailLog do
  use Cloudflare.Doc, "worker_tail_logs"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/scripts/:script_name/tails",
    only: [:index, :create, :delete]
end
