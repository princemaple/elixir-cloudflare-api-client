# User-Agent Blocking Rules

Perform access control when matching the exact UserAgent reported by the client

## List UserAgent Rules

`GET` List the UserAgent rules on a zone.

> GET zones/:zone_identifier/firewall/ua_rules

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create UserAgent Rule

`POST` Create a new UserAgent rule for a zone. See the record object definitions for required attributes for each record type

> POST zones/:zone_identifier/firewall/ua_rules

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## UserAgent Rule Details

`GET` List one user agent rule

> GET zones/:zone_identifier/firewall/ua_rules/:id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Update UserAgent Rule

`PUT` 

> PUT zones/:zone_identifier/firewall/ua_rules/:id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete UserAgent Rule

`DELETE` 

> DELETE zones/:zone_identifier/firewall/ua_rules/:id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

