defmodule Cloudflare.Account do
  @moduledoc """
  An Account is the root object which owns other resources such as zones,
  load balancers and billing details.
  """

  use Restlax.Resource,
    endpoint: "accounts",
    only: [:index, :show, :update]
end
