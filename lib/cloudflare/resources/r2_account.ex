defmodule Cloudflare.R2Account do
  use Cloudflare.Doc, "r2_account"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/r2",
    only: []

  @doc """
  Gets account-level R2 storage/object count metrics across all buckets.
  """
  def metrics(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "metrics"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
