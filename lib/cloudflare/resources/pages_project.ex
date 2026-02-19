defmodule Cloudflare.PagesProject do
  use Cloudflare.Doc, "pages_project"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/pages/projects",
    update_method: :patch,
    only: [:index, :show, :create, :update, :delete]
end
