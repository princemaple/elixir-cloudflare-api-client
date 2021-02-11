## Organization Railgun

Cloudflare Railgun for Organizations

### List Railguns

**Permission needed:** `None`

Available in:

* business
* enterprise

`GET` List, search, sort and filter your Railguns

> GET organizations/:organization_identifier/railguns


### Create Railgun

**Permission needed:** `None`

Available in:

* business
* enterprise

`POST` 

> POST organizations/:organization_identifier/railguns


### Railgun Details

**Permission needed:** `None`

Available in:

* business
* enterprise

`GET` 

> GET organizations/:organization_identifier/railguns/:identifier


### Enable or Disable a Railgun

**Permission needed:** `None`

Available in:

* business
* enterprise

`PATCH` Enable or disable a Railgun for all zones connected to it

> PATCH organizations/:organization_identifier/railguns/:identifier


### Delete Railgun

**Permission needed:** `None`

Available in:

* business
* enterprise

`DELETE` Disable and delete a Railgun. This will immediately disable the Railgun for any connected zones

> DELETE organizations/:organization_identifier/railguns/:identifier


### Get Railgun Zones

**Permission needed:** `None`

Available in:

* business
* enterprise

`GET` The zones that are currently using this Railgun

> GET organizations/:organization_identifier/railguns/:identifier/zones

