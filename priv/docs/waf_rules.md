# WAF Rules

A firewall rule for a zone

## List Rules

`GET` Search, sort, and filter rules within a package

> GET zones/:zone_id/firewall/waf/packages/:package_id/rules

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise


## Rule Details

`GET` Individual information about a rule

> GET zones/:zone_id/firewall/waf/packages/:package_id/rules/:identifier

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise


## Edit Rule

`PATCH` Update the action the rule will perform if triggered on the zone

> PATCH zones/:zone_id/firewall/waf/packages/:package_id/rules/:identifier

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

