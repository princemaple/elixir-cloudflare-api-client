## WAF Rules

A firewall rule for a zone

### List Rules

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` Search, sort, and filter rules within a package

> GET zones/:zone_id/firewall/waf/packages/:package_id/rules


### Rule Details

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` Individual information about a rule

> GET zones/:zone_id/firewall/waf/packages/:package_id/rules/:identifier


### Edit Rule

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`PATCH` Update the action the rule will perform if triggered on the zone

> PATCH zones/:zone_id/firewall/waf/packages/:package_id/rules/:identifier

