defmodule Cloudflare.Queue do
  use Cloudflare.Doc, "queue"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/queues",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Lists consumers for a Queue.
  """
  def consumers(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "consumers"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Creates a new consumer for a Queue.
  """
  def create_consumer(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "consumers"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Pushes a message to a Queue.
  """
  def push_message(id, body, opts \\ []) do
    client(opts).post(
      path_for(id, action: "messages"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
