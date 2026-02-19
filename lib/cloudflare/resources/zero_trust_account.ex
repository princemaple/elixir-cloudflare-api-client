defmodule Cloudflare.ZeroTrustAccount do
  use Cloudflare.Doc, "zero_trust_accounts"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/gateway",
    only: []

  # POST /accounts/:account_id/gateway
  def create(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).post(
      "accounts/#{account_id}/gateway",
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/gateway
  def get(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/gateway",
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/gateway/configuration
  def get_configuration(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/gateway/configuration",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /accounts/:account_id/gateway/configuration
  def update_configuration(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/gateway/configuration",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH /accounts/:account_id/gateway/configuration
  def patch_configuration(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/gateway/configuration",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/gateway/logging
  def get_logging(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/gateway/logging",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /accounts/:account_id/gateway/logging
  def update_logging(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/gateway/logging",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # GET /accounts/:account_id/devices/settings
  def get_device_settings(opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).get(
      "accounts/#{account_id}/devices/settings",
      Restlax.Resource.handle_options(opts)
    )
  end

  # PUT /accounts/:account_id/devices/settings
  def update_device_settings(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/devices/settings",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  # PATCH /accounts/:account_id/devices/settings
  def patch_device_settings(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).patch(
      "accounts/#{account_id}/devices/settings",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
