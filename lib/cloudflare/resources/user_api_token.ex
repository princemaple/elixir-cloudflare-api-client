defmodule Cloudflare.UserApiToken do
  use Cloudflare.Doc, "user_api_tokens"

  use Restlax.Resource,
    endpoint: "user/tokens",
    only: [:index, :show, :create, :update, :delete]

  def verify(opts \\ []) do
    client(opts).get(path_for(nil, action: "verify"), opts)
  end
end
