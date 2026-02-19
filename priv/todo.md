# Cloudflare API Client — TODO

## What We've Been Doing

Building a comprehensive Elixir API client for the Cloudflare REST API using `Restlax.Resource`.
Each resource has:

- A module under `lib/cloudflare/resources/`
- A corresponding test file under `test/cloudflare/resources/`
- Tests use **Bypass** to mock HTTP, never hit real Cloudflare

**174 doc files** live in `priv/docs/`. We implement each as a resource+test pair.

---

## Implemented Resources (72 total)

| Module                            | Doc file                                  | Notes                                            |
| --------------------------------- | ----------------------------------------- | ------------------------------------------------ |
| `Account`                         | `accounts.md`                             |                                                  |
| `AccountMember`                   | `account_members.md`                      |                                                  |
| `AccessApplication`               | `access_applications.md`                  | reuse, revoke_tokens custom                      |
| `AccessGroup`                     | `access_groups.md`                        |                                                  |
| `AccessIdentityProvider`          | `access_identity_providers.md`            |                                                  |
| `AccessServiceToken`              | `access_service_tokens.md`                | refresh, rotate custom                           |
| `AccessAppPolicy`                 | `access_application_scoped_policies.md`   | nested `:app_id`, make_reusable                  |
| `AccountRuleset`                  | `account_rulesets.md`                     | versions, create_rule custom                     |
| `CertificatePack`                 | `certificate_packs.md`                    | order, quota, PATCH update                       |
| `CloudflareTunnel`                | `cloudflare_tunnel.md`                    | PATCH update, connections, token                 |
| `CustomHostname`                  | `custom_hostname_for_a_zone.md`           |                                                  |
| `D1Database`                      | `d1.md`                                   | query, export, import                            |
| `DLPProfile`                      | `dlp_profiles.md`                         | targets `dlp/profiles/custom`, all/1             |
| `DnsRecord`                       | `dns_records_for_a_zone.md`               |                                                  |
| `EmailRoutingRule`                | `email_routing_routing_rules.md`          | catch_all, update_catch_all                      |
| `FirewallRule`                    | `firewall_rules.md`                       | update_priority PATCH collection                 |
| `HealthCheck`                     | `health_checks.md`                        |                                                  |
| `Hyperdrive`                      | `hyperdrive.md`                           |                                                  |
| `IpAccessRule`                    | `ip_access_rules_for_a_zone.md`           |                                                  |
| `KvNamespace`                     | `workers_kv_namespace.md`                 |                                                  |
| `List`                            | `lists.md`                                | items, create_items, replace_items, delete_items |
| `LoadBalancer`                    | `load_balancers.md`                       |                                                  |
| `LogpushJob`                      | `logpush_jobs_for_a_zone.md`              | get_ownership, validate_ownership                |
| `NotificationPolicy`              | `notification_policies.md`                |                                                  |
| `PageRule`                        | `page_rules.md`                           |                                                  |
| `PagesDeployment`                 | `pages_deployment.md`                     | nested `:project_name`, logs, retry, rollback    |
| `PagesProject`                    | `pages_project.md`                        | PATCH update                                     |
| `Queue`                           | `queue.md`                                | consumers, push_message                          |
| `R2Bucket`                        | `r2_bucket.md`                            | PATCH update, cors_policy                        |
| `RateLimit`                       | `rate_limits_for_a_zone.md`               |                                                  |
| `StreamVideo`                     | `stream_videos.md`                        | POST update, copy, create_token, storage_usage   |
| `Turnstile`                       | `turnstile.md`                            | rotate_secret                                    |
| `User`                            | `user.md`                                 |                                                  |
| `UserApiToken`                    | `user_api_tokens.md`                      |                                                  |
| `VectorizeIndex`                  | `vectorize.md`                            | upsert, query, insert, get_by_ids, delete_by_ids |
| `WafPackage`                      | `waf_packages.md`                         |                                                  |
| `WafRule`                         | `waf_rules.md`                            |                                                  |
| `WaitingRoom`                     | `waiting_room.md`                         | preview                                          |
| `WorkerRoute`                     | `worker_routes.md`                        |                                                  |
| `WorkerScript`                    | `worker_script.md`                        |                                                  |
| `WorkersAI`                       | `workers_ai.md`                           | run, models, model_schema, tasks — no CRUD       |
| `Zone`                            | `zone.md`                                 |                                                  |
| `ZoneSetting`                     | `zone_settings.md`                        |                                                  |
| `Organization`                    | `organizations.md`                        | (legacy)                                         |
| `SpectrumApplication`             | `spectrum_applications.md`                |                                                  |
| `DnsFirewall`                     | `dns_firewall.md`                         | PATCH update, reverse_dns                        |
| `DurableObjectsNamespace`         | `durable_objects_namespace.md`            | list-only + objects/2                            |
| `CustomSsl`                       | `custom_ssl_for_a_zone.md`                | PATCH update, prioritize/2                       |
| `OriginCa`                        | `origin_ca.md`                            | global endpoint, no account/zone scope           |
| `MagicGreTunnel`                  | `magic_gre_tunnels.md`                    | bulk_update/2                                    |
| `MagicIpsecTunnel`                | `magic_ipsec_tunnels.md`                  | bulk_update/2, generate_psk/2                    |
| `MagicStaticRoute`                | `magic_static_routes.md`                  | bulk_update/2, bulk_delete/2                     |
| `TunnelVirtualNetwork`            | `tunnel_virtual_network.md`               | PATCH update                                     |
| `UserAgentBlockingRule`           | `user_agent_blocking_rules.md`            |                                                  |
| `AccessReusablePolicy`            | `access_reusable_policies.md`             |                                                  |
| `StreamSigningKey`                | `stream_signing_keys.md`                  | create/index/delete only                         |
| `AccountLogpushJob`               | `logpush_jobs_for_an_account.md`          | ownership_challenge, validate_ownership          |
| `AIGateway`                       | `ai_gateway_gateways.md`                  | PUT update                                       |
| `TunnelRoute`                     | `tunnel_routes.md`                        | PATCH update, by_ip/2                            |
| `DevicePostureRule`               | `device_posture_rules.md`                 |                                                  |
| `DeviceManagedNetwork`            | `device_managed_networks.md`              |                                                  |
| `GatewayProxyEndpoint`            | `zero_trust_gateway_proxy_endpoints.md`   | PATCH update                                     |
| `ZeroTrustOrganization`           | `zero_trust_organization.md`              | singleton, revoke_user/2                         |
| `AIGatewayDataset`                | _(no doc)_                                | nested under gateway                             |
| `AIGatewayDynamicRoute`           | _(no doc)_                                | PATCH update, deployments/versions               |
| `AIGatewayEvaluation`             | _(no doc)_                                | evaluation_types at account level                |
| `AIGatewayLog`                    | _(no doc)_                                | delete_all, update (PATCH), request/response     |
| `AIGatewayProviderConfig`         | _(no doc)_                                | list/create/update/delete                        |
| `AISearchInstance`                | _(no doc)_                                | search, chat_completions, stats                  |
| `AISearchToken`                   | _(no doc)_                                | standard CRUD                                    |
| `WorkersAiFinetune`               | _(no doc)_                                | public listing, upload_asset                     |
| `WorkerAccountSettings`           | _(no doc)_                                | singleton get/update (PUT)                       |
| `WorkerDeployment`                | _(no doc)_                                | script-scoped list/show/create/delete            |
| `WorkerEnvironment`               | _(no doc)_                                | put_content, get_content, update_settings        |
| `WorkerForPlatforms`              | `workers_for_platforms.md`                | dispatch namespaces + scripts CRUD               |
| `WorkerPipeline`                  | _(no doc)_                                | pipelines/v1 list/show/create/delete             |
| `WorkerPlacement`                 | _(no doc)_                                | regions/1 read-only                              |
| `WorkerSubdomain`                 | _(no doc)_                                | singleton get/create/delete                      |
| `WorkerTailLog`                   | _(no doc)_                                | script-scoped tails list/create/delete           |
| `WorkerVersion`                   | _(no doc)_                                | script-scoped versions list/show/create          |
| `WorkersKvNamespace`              | _(no doc)_                                | CRUD + keys, values, bulk ops                    |
| `ZeroTrustGatewayRule`            | `zero_trust_gateway_rules.md`             | PUT update, `tenant_rules`, `reset_expiration`   |
| `ZeroTrustGatewayLocation`        | `zero_trust_gateway_locations.md`         | standard CRUD (PUT update)                       |
| `ZeroTrustList`                   | `zero_trust_lists.md`                     | PUT update, `patch`, `items`                     |
| `ZeroTrustCertificate`            | `zero_trust_certificates.md`              | index/show/create/delete + activate/deactivate   |
| `ZeroTrustGatewayPacFile`         | `zero_trust_gateway_pac_files.md`         | standard CRUD (PUT update)                       |
| `ZeroTrustHostnameRoute`          | `zero_trust_hostname_route.md`            | CRUD (PATCH update)                              |
| `ZeroTrustSeat`                   | `zero_trust_seats.md`                     | PATCH-only bulk update                           |
| `ZeroTrustConnectivitySettings`   | `zero_trust_connectivity_settings.md`     | singleton get/update (PATCH)                     |
| `ZeroTrustSshSettings`            | `zero_trust_ssh_settings.md`              | singleton get/update (PUT) + rotate_seed         |
| `ZeroTrustUser`                   | `zero_trust_users.md`                     | index/create + active_sessions/failed_logins     |
| `ZeroTrustRiskScoring`            | `zero_trust_risk_scoring.md`              | behaviors, summary, user_score, reset            |
| `ZeroTrustRiskScoringIntegration` | `zero_trust_risk_scoring_integrations.md` | CRUD (PUT update) + by_reference_id              |
| `ZeroTrustAccount`                | `zero_trust_accounts.md`                  | gateway, configuration, logging, device settings |
| `ZeroTrustSubnet`                 | `zero_trust_subnets.md`                   | list + WARP subnet CRUD + cloudflare_source      |

---

## Remaining — High Priority

These are commonly used Cloudflare features worth implementing next:

| Doc file                 | Suggested module    | Notes                                      |
| ------------------------ | ------------------- | ------------------------------------------ |
| `filters.md`             | `Filter`            | zone-scoped, used alongside firewall rules |
| `zone_rulesets.md`       | `ZoneRuleset`       | analogous to AccountRuleset                |
| `devices.md`             | `Device`            | WARP device management                     |
| `registrar_domains.md`   | `RegistrarDomain`   |                                            |
| `worker_cron_trigger.md` | `WorkerCronTrigger` |                                            |
| `worker_domain.md`       | `WorkerDomain`      |                                            |
| `stream_live_inputs.md`  | `StreamLiveInput`   |                                            |
| `zone_lockdown.md`       | `ZoneLockdown`      |                                            |

---

## Remaining — Lower Priority / Niche

Analytics, radar, billing, WARP internals, deprecated endpoints:

- `analytics.md`, `dns_analytics.md`, `spectrum_analytics.md` — read-only analytics
- `radar_*.md` (30+ files) — Cloudflare Radar, read-only aggregated data
- `zone_analytics_deprecated.md`, `url_scanner_deprecated.md`, `vectorize_beta_deprecated.md` — deprecated
- `account_billing_profile.md`, `user_billing_history.md`, `user_billing_profile.md` — billing
- `waf_overrides.md`, `waf_rule_groups.md` — WAF management plane
- `cloudflare_images.md`, `cloudflare_images_keys.md`, `cloudflare_images_variants.md` — Images
- `magic_network_monitoring_*.md` — MNM-specific
- `page_shield.md`, `zaraz.md`, `web_analytics.md` — analytics/observability
- `access_authentication_logs.md`, `access_scim_update_logs.md` — read-only logs
- `load_balancer_monitors.md`, `load_balancer_pools.md`, `load_balancer_regions.md` — LB building blocks

---

## Easily Missed Details

### Resource Implementation

1. **`use Restlax.Resource` — `only:` list must match what the API actually supports**
   - Some APIs don't have `show` (e.g., WorkersAI). Check the doc before adding to `only:`.
   - Default `update` uses HTTP `PUT`. Use `update_method: :patch` for PATCH-only resources (e.g., `CertificatePack`, `R2Bucket`).

2. **`path_for/1` vs `path_for/2`**
   - **Collection action** (no resource ID): `path_for(nil, action: "some_action")` → `zones/z/endpoint/some_action`
   - **Member action** (with resource ID): `path_for(id, action: "some_action")` → `zones/z/endpoint/id/some_action`
   - For simple member path: `path_for(id)` → `zones/z/endpoint/id`

3. **`Restlax.Resource.handle_options(opts)`** must be called in every custom action to pick up `params:`, auth headers, etc.

4. **Multiple path params** (e.g., `PagesDeployment`, `AccessAppPolicy`):

   ```elixir
   endpoint: "accounts/:account_id/pages/projects/:project_name/deployments"
   ```

   Both `:account_id` and `:project_name` must be passed in `params:` at call time.

5. **DELETE with a request body** (e.g., `List.delete_items/3`):

   ```elixir
   Restlax.Resource.handle_options(opts) |> Keyword.put(:body, body)
   ```

   Normal `client.delete/2` doesn't accept a body arg — it must go in opts.

6. **`use Cloudflare.Doc, "doc_filename"`** — filename without `.md`, matches the file in `priv/docs/`.

7. **Resource modules with no CRUD** (e.g., `WorkersAI`): skip `use Restlax.Resource` entirely and write fully manual functions using `client(opts).get/post(...)`.

### Testing

8. **Always set base_url in setup**:

   ```elixir
   Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
   ```

9. **`Bypass.expect_once/4`** not `Bypass.expect/4` — prevents silent extra request bugs.

10. **`client: client` goes in opts**, not as a first arg. Pattern:

    ```elixir
    Cloudflare.SomeResource.index(client: client, params: [account_id: "acct-123"])
    ```

11. **Test path must exactly match endpoint interpolation** — check that param names match exactly (e.g., `:zone_id` not `:zoneid`).

12. **Pinned variable assertions** with `^var` in pattern match — use for IDs returned in responses:
    ```elixir
    assert {:ok, %{body: %{"result" => %{"id" => ^pack_id}}}} = ...
    ```
