defmodule Cloudflare.ZeroTrustSubnet do
  use Cloudflare.Doc, "zero_trust_subnets"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/zerotrust/subnets",
    only: []

  # GET /accounts/:account_id/zerotrust/subnets
  def index(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zerotrust/subnets",
      Restlax.Resource.handle_options(opts)
    )
  end

  # POST /accounts/:account_id/zerotrust/subnets/warp
  def create_warp(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/zerotrust/subnets/warp",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/zerotrust/subnets/warp/:subnet_id
  def show_warp(subnet_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/zerotrust/subnets/warp/#{subnet_id}",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH /accounts/:account_id/zerotrust/subnets/warp/:subnet_id
  def update_warp(subnet_id, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/zerotrust/subnets/warp/#{subnet_id}",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # DELETE /accounts/:account_id/zerotrust/subnets/warp/:subnet_id
  def delete_warp(subnet_id, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).delete(
      "accounts/#{account_id}/zerotrust/subnets/warp/#{subnet_id}",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH /accounts/:account_id/zerotrust/subnets/cloudflare_source/:address_family
  def update_cloudflare_source(address_family, body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/zerotrust/subnets/cloudflare_source/#{address_family}",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
