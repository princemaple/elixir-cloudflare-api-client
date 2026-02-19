defmodule Cloudflare.AccessServiceToken do
  use Cloudflare.Doc, "access_service_tokens"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/service_tokens",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Refreshes the expiration of a service token.
  """
  def refresh(id, opts \\ []) do
    client(opts).post(
      path_for(id, action: "refresh"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Rotates the client secret for a service token.
  """
  def rotate(id, opts \\ []) do
    client(opts).post(
      path_for(id, action: "rotate"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
