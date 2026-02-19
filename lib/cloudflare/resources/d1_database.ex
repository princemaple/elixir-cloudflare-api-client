defmodule Cloudflare.D1Database do
  use Cloudflare.Doc, "d1"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/d1/database",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Executes a SQL query against a D1 database.
  """
  def query(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "query"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Executes a raw SQL query against a D1 database (returns rows as arrays).
  """
  def raw(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "raw"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Exports a D1 database as SQL.
  """
  def export(id, body \\ %{}, opts \\ []) do
    client(opts).post(
      path_for(id, action: "export"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Imports SQL into a D1 database.
  """
  def import(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "import"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
