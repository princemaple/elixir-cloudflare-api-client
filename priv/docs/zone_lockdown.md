# Zone Lockdown

Lock access to URLs in this zone to only permitted addresses or address ranges.

## List Lockdown Rules

`GET` List the lockdown rules on a zone.

> GET zones/:zone_identifier/firewall/lockdowns

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise


## Create Lockdown Rule

`POST` Create a new lockdown rule for a zone. See the record object definitions for required attributes for each record type

> POST zones/:zone_identifier/firewall/lockdowns

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise


## Lockdown Rule Details

`GET` 

> GET zones/:zone_identifier/firewall/lockdowns/:id

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise


## Update Lockdown Rule

`PUT` 

> PUT zones/:zone_identifier/firewall/lockdowns/:id

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise


## Delete Lockdown Rule

`DELETE` 

> DELETE zones/:zone_identifier/firewall/lockdowns/:id

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

