## Railgun Connections

Railguns associated with a zone

### List Connections

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise

`GET` List connections associated with the Railgun

> GET accounts/:account_identifier/railguns/:railgun_identifier/connections


### Connection Details

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise

`GET` Get a connection by ID

> GET accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier


### Update Connection

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

`PUT` Enable or disable a connection

> PUT accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier


### Delete Connection

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

`DELETE` Disable and remove the connection to a zone

> DELETE accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier


### Create Connection

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

`POST` Associates a zone to the Railgun

> POST accounts/:account_identifier/railguns/:railgun_identifier/connections

