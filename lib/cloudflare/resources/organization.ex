defmodule Cloudflare.Organization do
  use Cloudflare.Doc,
    name: "organizations",
    banner: """
    > Please use equivalent `/accounts` API endpoints.
    Account APIs provide a broader range of features and are backwards-compatible to organization APIs.
    """

  use Restlax.Resource,
    endpoint: "organizations",
    only: [:show, :update]
end
