# Zone Rate Plan

A zone rate plan from the billing service

## List Available Rate Plans

`GET` List all rate plans the zone can subscribe to.

> GET zones/:zone_identifier/available_rate_plans

**Permission needed:** `#billing:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## List Available Plans

`GET` List available plans the zone can subscribe to.

> GET zones/:zone_identifier/available_plans

**Permission needed:** `#billing:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Available Plan Details

`GET` Details of an available plan that the zone can subscribe to.

> GET zones/:zone_identifier/available_plans/:plan_identifier

**Permission needed:** `#billing:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

