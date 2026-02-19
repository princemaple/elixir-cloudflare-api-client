defmodule Cloudflare.WorkerPipeline do
  use Cloudflare.Doc, "workers_pipelines_other"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/pipelines/v1/pipelines",
    only: [:index, :show, :create, :delete]
end
