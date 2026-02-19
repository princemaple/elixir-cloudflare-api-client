defmodule Cloudflare.VectorizeIndex do
  use Cloudflare.Doc, "vectorize"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/vectorize/v2/indexes",
    only: [:index, :show, :create, :delete]

  @doc """
  Queries vectors closest to a given vector in an index.
  """
  def query(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "query"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Inserts vectors into the specified index.
  """
  def insert(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "insert"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Upserts vectors into the specified index.
  """
  def upsert(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "upsert"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Deletes vectors by their identifiers.
  """
  def delete_by_ids(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "delete_by_ids"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets info about an index (vector count, dimensions, etc.)
  """
  def info(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "info"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
