defmodule Cloudflare.MagicStaticRoute do
  use Cloudflare.Doc, "magic_static_routes"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/magic/routes",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Bulk-updates multiple Magic static routes (PUT collection).
  """
  def bulk_update(body, opts \\ []) do
    client(opts).put(
      path_for(nil),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Bulk-deletes multiple Magic static routes (DELETE collection).
  """
  def bulk_delete(body, opts \\ []) do
    client(opts).delete(
      path_for(nil),
      Restlax.Resource.handle_options(opts) |> Keyword.put(:body, body)
    )
  end
end
