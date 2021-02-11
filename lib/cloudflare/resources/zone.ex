defmodule Cloudflare.Zone do
  @moduledoc Cloudflare.docs("zone")

  use Restlax.Resource, endpoint: "zones"

  def activation_check(id, opts \\ []) do
    client(opts).put(path_for(id, action: "activation_check"), %{}, opts)
  end

  def purge_cache(id, matcher \\ %{}, opts \\ []) do
    client(opts).post(path_for(id, action: "purge_cache"), matcher, opts)
  end
end
