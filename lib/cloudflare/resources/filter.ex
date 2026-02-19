defmodule Cloudflare.Filter do
  use Cloudflare.Doc, "filters"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/filters",
    only: [:show, :create, :update, :delete]

  @doc """
  Lists all filters in a zone.
  """
  def index(opts \\ []) do
    client(opts).get(
      path_for(nil),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Bulk-updates multiple filters (PUT collection).
  """
  def bulk_update(body, opts \\ []) do
    client(opts).put(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Bulk-deletes multiple filters (DELETE collection with body).
  """
  def bulk_delete(body, opts \\ []) do
    client(opts).delete(
      path_for(nil),
      Restlax.Resource.handle_options(opts) |> Keyword.put(:body, body)
    )
  end
end
