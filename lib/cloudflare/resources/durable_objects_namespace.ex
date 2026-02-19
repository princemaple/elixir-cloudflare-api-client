defmodule Cloudflare.DurableObjectsNamespace do
  use Cloudflare.Doc, "durable_objects_namespace"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/workers/durable_objects/namespaces",
    only: [:index]

  @doc """
  Lists all Durable Objects in a specific namespace.
  """
  def objects(namespace_id, opts \\ []) do
    client(opts).get(
      path_for(namespace_id, action: "objects"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
