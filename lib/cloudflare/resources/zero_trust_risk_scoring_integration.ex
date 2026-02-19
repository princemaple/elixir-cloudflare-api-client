defmodule Cloudflare.ZeroTrustRiskScoringIntegration do
  use Cloudflare.Doc, "zero_trust_risk_scoring_integrations"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/zt_risk_scoring/integrations",
    only: [:index, :show, :create, :update, :delete]

  # GET /accounts/:account_id/zt_risk_scoring/integrations/reference_id/:reference_id
  def by_reference_id(reference_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zt_risk_scoring/integrations/reference_id/#{reference_id}",
      Restlax.Resource.handle_options(opts)
    )
  end
end
