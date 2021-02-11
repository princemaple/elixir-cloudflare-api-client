## Firewall rules

Define Firewall rules using filter expressions for more control over how traffic is matched to the rule.

### List of firewall rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` List all the firewall rules currently defined.

> GET zones/:zone_identifier/firewall/rules


### Get individual Firewall Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Retrieve the properties of an individual firewall rule

> GET zones/:zone_identifier/firewall/rules/:id


### Create firewall rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`POST` Create new firewall rules. See the record object definitions for required attributes for each record type

> POST zones/:zone_identifier/firewall/rules


### Update firewall rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update existing firewall rules. See the record object definitions for required attributes for each record type

> PUT zones/:zone_identifier/firewall/rules


### Update individual firewall rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update an individual existing firewall rule. See the record object definitions for required attributes for each record type

> PUT zones/:zone_identifier/firewall/rules/:id


### Delete firewall rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Delete existing firewall rules.

> DELETE zones/:zone_identifier/firewall/rules


### Delete individual firewall rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Delete existing firewall rules.

> DELETE zones/:zone_identifier/firewall/rules/:id

