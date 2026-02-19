defmodule Cloudflare.ZeroTrustUser do
  use Cloudflare.Doc, "zero_trust_users"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/users",
    only: [:index, :create]

  # GET /accounts/:account_id/access/users/:user_id/active_sessions
  def active_sessions(user_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/access/users/#{user_id}/active_sessions",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/access/users/:user_id/active_sessions/:nonce
  def active_session(user_id, nonce, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/access/users/#{user_id}/active_sessions/#{nonce}",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/access/users/:user_id/failed_logins
  def failed_logins(user_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/access/users/#{user_id}/failed_logins",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/access/users/:user_id/last_seen_identity
  def last_seen_identity(user_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/access/users/#{user_id}/last_seen_identity",
      Restlax.Resource.handle_options(opts)
    )
  end
end
