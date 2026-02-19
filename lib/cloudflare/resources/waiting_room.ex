defmodule Cloudflare.WaitingRoom do
  use Cloudflare.Doc, "waiting_room"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/waiting_rooms",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Creates a preview of a custom waiting room page.
  """
  def preview(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "preview"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
