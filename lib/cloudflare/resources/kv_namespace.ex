defmodule Cloudflare.KvNamespace do
  use Cloudflare.Doc, "workers_kv_namespace"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/storage/kv/namespaces",
    only: [:index, :show, :create, :update, :delete]
end
