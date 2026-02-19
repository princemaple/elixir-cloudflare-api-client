defmodule Cloudflare.WorkerPlacement do
  use Cloudflare.Doc, "worker_placement"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/placement/regions",
    only: []

  # Read-only: GET /accounts/:account_id/workers/placement/regions
  def regions(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/workers/placement/regions",
      Restlax.Resource.handle_options(opts)
    )
  end
end
