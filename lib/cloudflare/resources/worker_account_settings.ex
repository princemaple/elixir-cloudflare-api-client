defmodule Cloudflare.WorkerAccountSettings do
  use Cloudflare.Doc, "worker_account_settings"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/account-settings",
    only: []

  def get(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/workers/account-settings",
      Restlax.Resource.handle_options(opts)
    )
  end

  def update(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/workers/account-settings",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
