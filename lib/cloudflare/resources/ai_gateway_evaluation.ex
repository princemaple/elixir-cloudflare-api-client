defmodule Cloudflare.AIGatewayEvaluation do
  use Cloudflare.Doc, "ai_gateway_evaluations"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-gateway/gateways/:gateway_id/evaluations",
    only: [:index, :show, :create, :delete]

  def evaluation_types(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/ai-gateway/evaluation-types",
      Restlax.Resource.handle_options(opts)
    )
  end
end
