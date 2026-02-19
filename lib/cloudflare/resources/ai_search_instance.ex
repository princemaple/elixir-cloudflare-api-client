defmodule Cloudflare.AISearchInstance do
  use Cloudflare.Doc, "ai_search_instances"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-search/instances",
    only: [:index, :show, :create, :update, :delete]

  # POST /instances/:id/chat/completions
  def chat_completions(id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/ai-search/instances/#{id}/chat/completions",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /instances/:id/search
  def search(id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/ai-search/instances/#{id}/search",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /instances/:id/stats
  def stats(id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/ai-search/instances/#{id}/stats",
      Restlax.Resource.handle_options(opts)
    )
  end
end
