defmodule Cloudflare.WorkerCronTrigger do
  use Cloudflare.Doc, "worker_cron_trigger"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/scripts",
    only: []

  @doc """
  Fetches Cron Triggers for a Worker script.
  """
  def get(script_name, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/workers/scripts/#{script_name}/schedules",
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Updates (replaces) Cron Triggers for a Worker script.
  """
  def update(script_name, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/workers/scripts/#{script_name}/schedules",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
