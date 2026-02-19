defmodule Cloudflare.WorkersAiFinetune do
  use Cloudflare.Doc, "workers_ai_finetune"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai/finetunes",
    only: [:index, :create]

  # GET /ai/finetunes/public
  def public(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/ai/finetunes/public",
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /ai/finetunes/:finetune_id/finetune-assets
  def upload_asset(finetune_id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/ai/finetunes/#{finetune_id}/finetune-assets",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
