defmodule Cloudflare.ZeroTrustList do
  use Cloudflare.Doc, "zero_trust_lists"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway/lists",
    only: [:index, :show, :create, :update, :delete]

  # PATCH /accounts/:account_id/gateway/lists/:list_id
  def patch(list_id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/gateway/lists/#{list_id}",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/gateway/lists/:list_id/items
  def items(list_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/gateway/lists/#{list_id}/items",
      Restlax.Resource.handle_options(opts)
    )
  end
end
