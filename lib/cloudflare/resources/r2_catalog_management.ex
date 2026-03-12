defmodule Cloudflare.R2CatalogManagement do
  use Cloudflare.Doc, "r2_catalog_management"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/r2-catalog",
    only: [:index, :show]

  @doc """
  Enables an R2 bucket as an Apache Iceberg catalog.
  """
  def enable(id, opts \\ []) do
    client(opts).post(
      path_for(id, action: "enable"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Disables an R2 bucket as a catalog.
  """
  def disable(id, opts \\ []) do
    client(opts).post(
      path_for(id, action: "disable"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
