defmodule Cloudflare.ZeroTrustRiskScoring do
  use Cloudflare.Doc, "zero_trust_risk_scoring"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/zt_risk_scoring",
    only: []

  # GET /accounts/:account_id/zt_risk_scoring/behaviors
  def behaviors(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zt_risk_scoring/behaviors",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /accounts/:account_id/zt_risk_scoring/behaviors
  def update_behaviors(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/zt_risk_scoring/behaviors",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/zt_risk_scoring/summary
  def summary(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zt_risk_scoring/summary",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/zt_risk_scoring/:user_id
  def user_score(user_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zt_risk_scoring/#{user_id}",
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /accounts/:account_id/zt_risk_scoring/:user_id/reset
  def reset(user_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/zt_risk_scoring/#{user_id}/reset",
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
