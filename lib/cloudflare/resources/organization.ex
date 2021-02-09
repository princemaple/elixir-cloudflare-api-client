defmodule Cloudflare.Organization do
  @moduledoc """
  An Organization is an entity which holds a set of zones for multiple users to interact with.

  Please use equivalent `/accounts` API endpoints.
  Account APIs provide a broader range of features
  and are backwards-compatible to organization APIs.
  """

  use Restlax.Resource,
    endpoint: "organizations",
    only: [:show, :update]
end
