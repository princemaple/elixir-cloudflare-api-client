defmodule Cloudflare.WorkerForPlatforms do
  use Cloudflare.Doc, "workers_for_platforms"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/dispatch/namespaces",
    update_method: :patch,
    only: [:index, :show, :create, :update, :delete]

  # GET /dispatch/namespaces/:namespace/scripts
  def scripts(namespace, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/workers/dispatch/namespaces/#{namespace}/scripts",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /dispatch/namespaces/:namespace/scripts/:script_name
  def show_script(namespace, script_name, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/workers/dispatch/namespaces/#{namespace}/scripts/#{script_name}",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /dispatch/namespaces/:namespace/scripts/:script_name
  def upload_script(namespace, script_name, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/workers/dispatch/namespaces/#{namespace}/scripts/#{script_name}",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # DELETE /dispatch/namespaces/:namespace/scripts/:script_name
  def delete_script(namespace, script_name, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).delete(
      "accounts/#{account_id}/workers/dispatch/namespaces/#{namespace}/scripts/#{script_name}",
      Restlax.Resource.handle_options(opts)
    )
  end
end
