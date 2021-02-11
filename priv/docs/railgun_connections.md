# Railgun Connections

A Railgun connection associates a zone with the Railgun

## List Connections

`GET` List connections associated with the Railgun

> GET accounts/:account_identifier/railguns/:railgun_identifier/connections

**Permission needed:** `#organization:read`

Available in:

* BUSINESS
* ENTERPRISE


## Connection Details

`GET` Get a connection by ID

> GET accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier

**Permission needed:** `#organization:read`

Available in:

* BUSINESS
* ENTERPRISE


## Update Connection

`PUT` Enable or disable a connection

> PUT accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier

**Permission needed:** `#organization:edit`

Available in:

* BUSINESS
* ENTERPRISE


## Delete Connection

`DELETE` Disable and remove the connection to a zone

> DELETE accounts/:account_identifier/railguns/:railgun_identifier/connections/:identifier

**Permission needed:** `#organization:edit`

Available in:

* BUSINESS
* ENTERPRISE


## Create Connection

`POST` Associates a zone to the Railgun

> POST accounts/:account_identifier/railguns/:railgun_identifier/connections

**Permission needed:** `#organization:edit`

Available in:

* BUSINESS
* ENTERPRISE

