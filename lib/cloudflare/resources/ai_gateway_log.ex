defmodule Cloudflare.AIGatewayLog do
  use Cloudflare.Doc, "ai_gateway_logs"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-gateway/gateways/:gateway_id/logs",
    only: [:index, :show]

  # DELETE /logs (collection delete)
  def delete_all(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).delete(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH /logs/:id
  def update(id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).patch(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs/#{id}",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /logs/:id/request
  def request(id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).get(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs/#{id}/request",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /logs/:id/response
  def response(id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)
    gateway_id = Keyword.get(opts[:params] || [], :gateway_id)

    client(opts).get(
      "accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs/#{id}/response",
      Restlax.Resource.handle_options(opts)
    )
  end
end
