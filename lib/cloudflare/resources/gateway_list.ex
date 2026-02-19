defmodule Cloudflare.GatewayList do
  use Cloudflare.Doc, "zero_trust_lists"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/lists",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Appends or removes items from a Zero Trust list (PATCH).
  """
  def patch(list_id, body, opts \\ []) do
    client(opts).patch(
      path_for(list_id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Fetches all items in a single Zero Trust list.
  """
  def items(list_id, opts \\ []) do
    client(opts).get(
      path_for(list_id, action: "items"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
