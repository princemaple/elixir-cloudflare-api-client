defmodule Cloudflare.CustomSsl do
  use Cloudflare.Doc, "custom_ssl_for_a_zone"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/custom_certificates",
    only: [:index, :show, :create, :delete]

  @doc """
  Edits (PATCH) an existing custom SSL configuration.
  """
  def update(cert_id, body, opts \\ []) do
    client(opts).patch(
      path_for(cert_id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Re-prioritizes SSL certificates (PUT collection).
  """
  def prioritize(body, opts \\ []) do
    client(opts).put(
      path_for(nil, action: "prioritize"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
