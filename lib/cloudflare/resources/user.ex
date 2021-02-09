defmodule Cloudflare.User do
  @moduledoc """
  The currently logged in/authenticated User
  """

  use Restlax.Resource,
    endpoint: "user",
    update_method: :patch,
    singular: true
end
