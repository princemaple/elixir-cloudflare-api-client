# WAF Rule Packages

Web application firewall rule package applied to a zone

## List Firewall Packages

`GET` Retrieve firewall packages for a zone

> GET zones/:zone_identifier/firewall/waf/packages

**Permission needed:** `None`

Available in:

* PRO
* BUSINESS
* ENTERPRISE


## Firewall Package Details

`GET` Get information about a single firewall package

> GET zones/:zone_identifier/firewall/waf/packages/:identifier

**Permission needed:** `None`

Available in:

* PRO
* BUSINESS
* ENTERPRISE


## Edit Firewall Package

`PATCH` Change the sensitivity and action for an anomaly detection type WAF rule package

> PATCH zones/:zone_identifier/firewall/waf/packages/:identifier

**Permission needed:** `None`

Available in:

* PRO
* BUSINESS
* ENTERPRISE

