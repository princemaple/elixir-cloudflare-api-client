defmodule Cloudflare.PagesDeployment do
  use Cloudflare.Doc, "pages_deployment"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/pages/projects/:project_name/deployments",
    only: [:index, :show, :create, :delete]

  @doc """
  Fetches the build logs for a deployment.
  """
  def logs(deployment_id, opts \\ []) do
    client(opts).get(
      path_for(deployment_id, action: "history/logs"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Retries a previous deployment.
  """
  def retry(deployment_id, opts \\ []) do
    client(opts).post(
      path_for(deployment_id, action: "retry"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Rolls back the production deployment to a previous one.
  """
  def rollback(deployment_id, opts \\ []) do
    client(opts).post(
      path_for(deployment_id, action: "rollback"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
