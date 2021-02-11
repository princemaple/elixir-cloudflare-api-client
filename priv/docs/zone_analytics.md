## Dashboard

**Permission needed:** `#analytics:read`

Available in:

* free
* pro
* business
* enterprise

`GET` The dashboard view provides both totals and timeseries data for the given zone and time period across the entire Cloudflare network.

> GET zones/:zone_identifier/analytics/dashboard


## Analytics by Co-locations

**Permission needed:** `#analytics:read`

Available in:

* enterprise

`GET` This view provides a breakdown of analytics data by datacenter. Note: This is available to Enterprise customers only.

> GET zones/:zone_identifier/analytics/colos
