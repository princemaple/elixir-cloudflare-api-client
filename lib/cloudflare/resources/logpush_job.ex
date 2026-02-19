defmodule Cloudflare.LogpushJob do
  use Cloudflare.Doc, "logpush_jobs_for_a_zone"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/logpush/jobs",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Gets an ownership challenge for a destination.
  """
  def get_ownership(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "ownership"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Validates ownership challenge of the destination.
  """
  def validate_ownership(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "ownership/validate"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
