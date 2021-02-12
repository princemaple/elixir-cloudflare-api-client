defmodule Cloudflare.ZoneSetting do
  @moduledoc Cloudflare.docs("zone_settings")

  use Restlax.Resource,
    endpoint: "zones/:zone_id/settings",
    singular: true

  @settings ~w(
    advanced_ddos
    always_online
    always_use_https
    opportunistic_onion
    orange_to_orange
    automatic_https_rewrites
    browser_cache_ttl
    browser_check
    cache_level
    challenge_ttl
    development_mode
    email_obfuscation
    hotlink_protection
    ip_geolocation
    ipv6
    minify
    mobile_redirect
    mirage
    origin_error_page_pass_thru
    opportunistic_encryption
    polish
    webp
    brotli
    prefetch_preload
    privacy_pass
    response_buffering
    rocket_loader
    security_header
    security_level
    server_side_exclude
    sort_query_string_for_cache
    ssl
    min_tls_version
    ciphers
    tls_client_auth
    true_client_ip_header
    waf
    http2
    http3
    0rtt
    pseudo_ipv4
    websockets
    image_resizing
    h2_prioritization
    automatic_platform_optimization
  )a

  setting_type = Enum.reduce(@settings, fn left, right -> {:|, [], [left, right]} end)

  @type setting :: unquote(setting_type)

  @spec show(__MODULE__.setting(), Restlax.Resource.action_options()) :: Tesla.Env.result()
  for setting <- @settings do
    def show(unquote(setting), opts) do
      client(opts).get(path_for(nil, action: unquote(to_string(setting))), opts)
    end
  end

  @spec update(
          __MODULE__.setting(),
          Restlax.Resource.action_body(),
          Restlax.Resource.action_options()
        ) :: Tesla.Env.result()
  for setting <- @settings do
    def update(unquote(setting), body, opts) do
      client(opts).patch(path_for(nil, action: unquote(to_string(setting))), body, opts)
    end
  end
end
