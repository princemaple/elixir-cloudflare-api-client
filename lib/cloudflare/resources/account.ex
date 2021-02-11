defmodule Cloudflare.Account do
  @moduledoc Cloudflare.docs("accounts")

  use Restlax.Resource,
    endpoint: "accounts",
    only: [:index, :show, :update]
end
