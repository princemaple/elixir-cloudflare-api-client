# Account Railguns

Cloudflare Railguns available to Accounts

## List Railguns

`GET` List, search, sort and filter your Railguns

> GET accounts/:account_identifier/railguns

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise


## Create Railgun

`POST` 

> POST accounts/:account_identifier/railguns

**Permission needed:** `None`

Available in:

* business
* enterprise


## Railgun Details

`GET` 

> GET accounts/:account_identifier/railguns/:identifier

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise


## Update Railgun

`PUT` Update a Railgun

> PUT accounts/:account_identifier/railguns/:identifier

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise


## Delete Railgun

`DELETE` Disable and delete a Railgun. This will immediately disable the Railgun for any connected zones

> DELETE accounts/:account_identifier/railguns/:identifier

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

