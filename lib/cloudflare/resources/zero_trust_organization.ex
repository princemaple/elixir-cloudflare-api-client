defmodule Cloudflare.ZeroTrustOrganization do
  use Cloudflare.Doc, "zero_trust_organization"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/organizations",
    only: []

  @doc """
  Gets the Zero Trust organization configuration.
  """
  def get(opts \\ []) do
    client(opts).get(
      path_for(nil),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Creates (sets up) the Zero Trust organization.
  """
  def create(body, opts \\ []) do
    client(opts).post(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Updates the Zero Trust organization configuration (PUT).
  """
  def update(body, opts \\ []) do
    client(opts).put(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Revokes all Access tokens for a specific user.
  """
  def revoke_user(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/access/organizations/revoke_user",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
