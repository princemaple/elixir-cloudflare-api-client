defmodule Cloudflare.CertificatePack do
  use Cloudflare.Doc, "certificate_packs"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/ssl/certificate_packs",
    only: [:index, :show, :delete],
    update_method: :patch

  @doc """
  Orders an advanced certificate pack.
  """
  def order(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "order"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets certificate pack quotas for the zone.
  """
  def quota(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "quota"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Restarts validation or updates a certificate pack (PATCH).
  """
  def update(id, body, opts \\ []) do
    client(opts).patch(
      path_for(id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
