defmodule Cloudflare.Organization do
  @moduledoc """

  > Please use equivalent `/accounts` API endpoints.
  Account APIs provide a broader range of features and are backwards-compatible to organization APIs.

  #{Cloudflare.docs("organizations")}
  """

  use Restlax.Resource,
    endpoint: "organizations",
    only: [:show, :update]
end
