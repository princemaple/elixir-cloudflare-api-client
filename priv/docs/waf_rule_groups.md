# WAF Rule Groups

A group of web application firewall rules that share common functionality and traits

## List Rule Groups

`GET` Search, list, and sort rule groups contained within a package

> GET zones/:zone_identifier/firewall/waf/packages/:package_identifier/groups

**Permission needed:** `None`

Available in:

* PRO
* BUSINESS
* ENTERPRISE


## Rule Group Details

`GET` Get a single rule group

> GET zones/:zone_identifier/firewall/waf/packages/:package_identifier/groups/:identifier

**Permission needed:** `None`

Available in:

* PRO
* BUSINESS
* ENTERPRISE


## Edit Rule Group

`PATCH` Update the state of a rule group

> PATCH zones/:zone_identifier/firewall/waf/packages/:package_identifier/groups/:identifier

**Permission needed:** `None`

Available in:

* PRO
* BUSINESS
* ENTERPRISE

