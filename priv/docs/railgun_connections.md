# Railgun Connections

Railguns associated with a zone

## List Connections

`GET` List connections associated with the Railgun

> GET accounts/:account_identifier/railguns/:railgun_identifier/connections

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise


## Connection Details

`GET` Get a connection by ID

> GET accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise


## Update Connection

`PUT` Enable or disable a connection

> PUT accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise


## Delete Connection

`DELETE` Disable and remove the connection to a zone

> DELETE accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise


## Create Connection

`POST` Associates a zone to the Railgun

> POST accounts/:account_identifier/railguns/:railgun_identifier/connections

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

