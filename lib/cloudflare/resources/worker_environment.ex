defmodule Cloudflare.WorkerEnvironment do
  use Cloudflare.Doc, "worker_environment"

  use Restlax.Resource,
    endpoint:
      "accounts/:account_id/workers/services/:service_name/environments/:environment_name",
    only: []

  # PUT content
  def put_content(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    service_name = Keyword.get(opts[:params] || [], :service_name)
    environment_name = Keyword.get(opts[:params] || [], :environment_name)

    client(opts).put(
      "accounts/#{account_id}/workers/services/#{service_name}/environments/#{environment_name}/content",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET content
  def get_content(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    service_name = Keyword.get(opts[:params] || [], :service_name)
    environment_name = Keyword.get(opts[:params] || [], :environment_name)

    client(opts).get(
      "accounts/#{account_id}/workers/services/#{service_name}/environments/#{environment_name}/content",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH settings
  def update_settings(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    service_name = Keyword.get(opts[:params] || [], :service_name)
    environment_name = Keyword.get(opts[:params] || [], :environment_name)

    client(opts).patch(
      "accounts/#{account_id}/workers/services/#{service_name}/environments/#{environment_name}/settings",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET settings
  def get_settings(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    service_name = Keyword.get(opts[:params] || [], :service_name)
    environment_name = Keyword.get(opts[:params] || [], :environment_name)

    client(opts).get(
      "accounts/#{account_id}/workers/services/#{service_name}/environments/#{environment_name}/settings",
      Restlax.Resource.handle_options(opts)
    )
  end
end
