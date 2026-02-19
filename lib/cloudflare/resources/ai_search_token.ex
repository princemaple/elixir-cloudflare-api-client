defmodule Cloudflare.AISearchToken do
  use Cloudflare.Doc, "ai_search_tokens"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai-search/tokens",
    only: [:index, :show, :create, :update, :delete]
end
