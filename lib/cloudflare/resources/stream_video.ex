defmodule Cloudflare.StreamVideo do
  use Cloudflare.Doc, "stream_videos"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/stream",
    only: [:index, :show, :delete]

  @doc """
  Edits details for a single video (Stream uses POST for updates).
  """
  def update(id, body, opts \\ []) do
    client(opts).post(
      path_for(id),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Uploads a video to Stream from a provided URL.
  """
  def copy(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "copy"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Creates a signed URL token for a video.
  """
  def create_token(id, body \\ %{}, opts \\ []) do
    client(opts).post(
      path_for(id, action: "token"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Returns storage usage information for the account.
  """
  def storage_usage(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "storage-usage"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
