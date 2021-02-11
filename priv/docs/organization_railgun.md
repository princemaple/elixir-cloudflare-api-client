# Organization Railgun

Cloudflare Railgun for Organizations

## List Railguns

`GET` List, search, sort and filter your Railguns

> GET organizations/:organization_identifier/railguns

**Permission needed:** `None`

Available in:

* BUSINESS
* ENTERPRISE


## Create Railgun

`POST` 

> POST organizations/:organization_identifier/railguns

**Permission needed:** `None`

Available in:

* BUSINESS
* ENTERPRISE


## Railgun Details

`GET` 

> GET organizations/:organization_identifier/railguns/:identifier

**Permission needed:** `None`

Available in:

* BUSINESS
* ENTERPRISE


## Enable or Disable a Railgun

`PATCH` Enable or disable a Railgun for all zones connected to it

> PATCH organizations/:organization_identifier/railguns/:identifier

**Permission needed:** `None`

Available in:

* BUSINESS
* ENTERPRISE


## Delete Railgun

`DELETE` Disable and delete a Railgun. This will immediately disable the Railgun for any connected zones

> DELETE organizations/:organization_identifier/railguns/:identifier

**Permission needed:** `None`

Available in:

* BUSINESS
* ENTERPRISE


## Get Railgun Zones

`GET` The zones that are currently using this Railgun

> GET organizations/:organization_identifier/railguns/:identifier/zones

**Permission needed:** `None`

Available in:

* BUSINESS
* ENTERPRISE

