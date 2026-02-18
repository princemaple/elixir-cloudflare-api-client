defmodule Cloudflare.PageRule do
  use Cloudflare.Doc, "page_rules"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/pagerules",
    only: [:index, :show, :create, :update, :edit, :delete]
end
