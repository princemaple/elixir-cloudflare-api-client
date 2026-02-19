defmodule Cloudflare.List do
  use Cloudflare.Doc, "lists"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/rules/lists",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Gets all items in a list.
  """
  def items(list_id, opts \\ []) do
    client(opts).get(
      path_for(list_id, action: "items"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Creates new items in a list (appends).
  """
  def create_items(list_id, body, opts \\ []) do
    client(opts).post(
      path_for(list_id, action: "items"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Replaces all items in a list.
  """
  def replace_items(list_id, body, opts \\ []) do
    client(opts).put(
      path_for(list_id, action: "items"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Deletes items from a list (by IDs in the body).
  """
  def delete_items(list_id, body, opts \\ []) do
    client(opts).delete(
      path_for(list_id, action: "items"),
      Restlax.Resource.handle_options(opts) |> Keyword.put(:body, body)
    )
  end
end
