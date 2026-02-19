defmodule Cloudflare.WorkersKvNamespace do
  use Cloudflare.Doc, "workers_kv_namespace"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/storage/kv/namespaces",
    only: [:index, :show, :create, :update, :delete]

  # PUT /bulk — write multiple KV pairs
  def bulk_write(namespace_id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/storage/kv/namespaces/#{namespace_id}/bulk",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # DELETE /bulk — delete multiple KV pairs
  def bulk_delete(namespace_id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).delete(
      "accounts/#{account_id}/storage/kv/namespaces/#{namespace_id}/bulk",
      Restlax.Resource.handle_options(opts) |> Keyword.put(:body, body)
    )
  end

  # GET /keys — list keys
  def keys(namespace_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/storage/kv/namespaces/#{namespace_id}/keys",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /values/:key_name — write a single KV pair
  def put_value(namespace_id, key_name, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/storage/kv/namespaces/#{namespace_id}/values/#{key_name}",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /values/:key_name — read a KV pair
  def get_value(namespace_id, key_name, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/storage/kv/namespaces/#{namespace_id}/values/#{key_name}",
      Restlax.Resource.handle_options(opts)
    )
  end

  # DELETE /values/:key_name — delete a KV pair
  def delete_value(namespace_id, key_name, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).delete(
      "accounts/#{account_id}/storage/kv/namespaces/#{namespace_id}/values/#{key_name}",
      Restlax.Resource.handle_options(opts)
    )
  end
end
