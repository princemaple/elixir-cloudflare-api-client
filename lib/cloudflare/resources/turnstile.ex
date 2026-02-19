defmodule Cloudflare.Turnstile do
  use Cloudflare.Doc, "turnstile"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/challenges/widgets",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Rotates the secret key for a Turnstile widget.
  """
  def rotate_secret(id, body \\ %{}, opts \\ []) do
    client(opts).post(
      path_for(id, action: "rotate_secret"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
