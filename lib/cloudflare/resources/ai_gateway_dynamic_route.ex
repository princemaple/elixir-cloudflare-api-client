defmodule Cloudflare.AIGatewayDynamicRoute do
  use Cloudflare.Doc, "ai_gateway_dynamic_routes"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-gateway/gateways/:gateway_id/routes",
    update_method: :patch,
    only: [:index, :show, :create, :update, :delete]

  # POST /routes/:id/deployments
  def create_deployment(id, body \\ %{}, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).post(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes/#{id}/deployments",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /routes/:id/deployments
  def list_deployments(id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).get(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes/#{id}/deployments",
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /routes/:id/versions
  def create_version(id, body \\ %{}, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).post(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes/#{id}/versions",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /routes/:id/versions
  def list_versions(id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).get(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes/#{id}/versions",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /routes/:id/versions/:version_id
  def show_version(id, version_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).get(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes/#{id}/versions/#{version_id}",
      Restlax.Resource.handle_options(opts)
    )
  end
end
