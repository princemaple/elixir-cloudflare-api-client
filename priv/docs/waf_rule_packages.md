## List Firewall Packages

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` Retrieve firewall packages for a zone

> GET zones/:zone_identifier/firewall/waf/packages


## Firewall Package Details

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` Get information about a single firewall package

> GET zones/:zone_identifier/firewall/waf/packages/:identifier


## Edit Firewall Package

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`PATCH` Change the sensitivity and action for an anomaly detection type WAF rule package

> PATCH zones/:zone_identifier/firewall/waf/packages/:identifier
