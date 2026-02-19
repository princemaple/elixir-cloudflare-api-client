defmodule Cloudflare.WorkerDomain do
  use Cloudflare.Doc, "worker_domain"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/domains",
    only: [:index, :show, :delete]

  @doc """
  Attaches a Worker to a zone and hostname (PUT).
  """
  def attach(body, opts \\ []) do
    client(opts).put(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
