## List Available Rate Plans

**Permission needed:** `#billing:read`

Available in:

* free
* pro
* business
* enterprise

`GET` List all rate plans the zone can subscribe to.

> GET zones/:zone_identifier/available_rate_plans


## List Available Plans

**Permission needed:** `#billing:read`

Available in:

* free
* pro
* business
* enterprise

`GET` List available plans the zone can subscribe to.

> GET zones/:zone_identifier/available_plans


## Available Plan Details

**Permission needed:** `#billing:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Details of an available plan that the zone can subscribe to.

> GET zones/:zone_identifier/available_plans/:plan_identifier
