defmodule Cloudflare.AccessApplication do
  use Cloudflare.Doc, "access_applications"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/apps",
    only: [:index, :create, :show, :update, :delete]

  @doc """
  Revokes all tokens issued for an application.
  """
  def revoke_tokens(id, opts \\ []) do
    client(opts).post(
      path_for(id, action: "revoke_tokens"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Updates Access application settings.
  """
  def update_settings(id, settings, opts \\ []) do
    client(opts).put(
      path_for(id, action: "settings"),
      settings,
      Restlax.Resource.handle_options(opts)
    )
  end
end
