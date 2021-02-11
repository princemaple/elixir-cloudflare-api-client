## WAF Rule Groups

A group of web application firewall rules that share common functionality and traits

### List Rule Groups

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` Search, list, and sort rule groups contained within a package

> GET zones/:zone_identifier/firewall/waf/packages/:package_identifier/groups


### Rule Group Details

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` Get a single rule group

> GET zones/:zone_identifier/firewall/waf/packages/:package_identifier/groups/:identifier


### Edit Rule Group

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`PATCH` Update the state of a rule group

> PATCH zones/:zone_identifier/firewall/waf/packages/:package_identifier/groups/:identifier

