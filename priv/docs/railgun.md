# Railgun

Cloudflare Railgun

## List Railguns

`GET` List, search, sort and filter your Railguns

> GET railguns

**Permission needed:** `None`

Available in:

* business
* enterprise


## Create Railgun

`POST` 

> POST railguns

**Permission needed:** `None`

Available in:

* business
* enterprise


## Railgun Details

`GET` 

> GET railguns/:identifier

**Permission needed:** `None`

Available in:

* business
* enterprise


## Enable or Disable a Railgun

`PATCH` Enable or disable a Railgun for all zones connected to it

> PATCH railguns/:identifier

**Permission needed:** `None`

Available in:

* business
* enterprise


## Delete Railgun

`DELETE` Disable and delete a Railgun. This will immediately disable the Railgun for any connected zones

> DELETE railguns/:identifier

**Permission needed:** `None`

Available in:

* business
* enterprise


## List Railgun Zones

`GET` The zones that are currently using this Railgun

> GET railguns/:identifier/zones

**Permission needed:** `None`

Available in:

* business
* enterprise

