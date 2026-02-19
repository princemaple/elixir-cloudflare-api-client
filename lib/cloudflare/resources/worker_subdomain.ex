defmodule Cloudflare.WorkerSubdomain do
  use Cloudflare.Doc, "worker_subdomain"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/subdomain",
    only: []

  def get(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/workers/subdomain",
      Restlax.Resource.handle_options(opts)
    )
  end

  def create(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/workers/subdomain",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  def delete(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).delete(
      "accounts/#{account_id}/workers/subdomain",
      Restlax.Resource.handle_options(opts)
    )
  end
end
