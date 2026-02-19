defmodule Cloudflare.R2Bucket do
  use Cloudflare.Doc, "r2_bucket"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/r2/buckets",
    update_method: :patch,
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Gets the CORS policy for an R2 bucket.
  """
  def get_cors(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "cors"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Sets the CORS policy for an R2 bucket.
  """
  def put_cors(id, body, opts \\ []) do
    client(opts).put(
      path_for(id, action: "cors"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Deletes the CORS policy for an R2 bucket.
  """
  def delete_cors(id, opts \\ []) do
    client(opts).delete(
      path_for(id, action: "cors"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
