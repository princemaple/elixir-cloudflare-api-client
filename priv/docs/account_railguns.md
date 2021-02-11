## Account Railguns

Cloudflare Railguns available to Accounts

### List Railguns

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise

`GET` List, search, sort and filter your Railguns

> GET accounts/:account_identifier/railguns


### Create Railgun

**Permission needed:** `None`

Available in:

* business
* enterprise

`POST` 

> POST accounts/:account_identifier/railguns


### Railgun Details

**Permission needed:** `#organization:read`

Available in:

* business
* enterprise

`GET` 

> GET accounts/:account_identifier/railguns/:identifier


### Update Railgun

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

`PUT` Update a Railgun

> PUT accounts/:account_identifier/railguns/:identifier


### Delete Railgun

**Permission needed:** `#organization:edit`

Available in:

* business
* enterprise

`DELETE` Disable and delete a Railgun. This will immediately disable the Railgun for any connected zones

> DELETE accounts/:account_identifier/railguns/:identifier

