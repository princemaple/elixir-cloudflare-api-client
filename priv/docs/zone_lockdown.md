## Zone Lockdown

Lock access to URLs in this zone to only permitted addresses or address ranges.

### List Lockdown Rules

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` List the lockdown rules on a zone.

> GET zones/:zone_identifier/firewall/lockdowns


### Create Lockdown Rule

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`POST` Create a new lockdown rule for a zone. See the record object definitions for required attributes for each record type

> POST zones/:zone_identifier/firewall/lockdowns


### Lockdown Rule Details

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`GET` 

> GET zones/:zone_identifier/firewall/lockdowns/:id


### Update Lockdown Rule

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`PUT` 

> PUT zones/:zone_identifier/firewall/lockdowns/:id


### Delete Lockdown Rule

**Permission needed:** `None`

Available in:

* pro
* business
* enterprise

`DELETE` 

> DELETE zones/:zone_identifier/firewall/lockdowns/:id

