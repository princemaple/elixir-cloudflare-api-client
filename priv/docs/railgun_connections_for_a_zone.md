## List Available Railguns

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise

`GET` A list of available Railguns the zone can use

> GET zones/:zone_identifier/railguns


## Railgun Details

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise

`GET` Details about a specific Railgun

> GET zones/:zone_identifier/railguns/:identifier


## Connect or Disconnect a Railgun

**Permission needed:** `#zone_settings:edit`

Available in:

* business
* enterprise

`PATCH` Connect or disconnect a Railgun

> PATCH zones/:zone_identifier/railguns/:identifier


## Test Railgun Connection

**Permission needed:** `#zone_settings:read`

Available in:

* business
* enterprise

`GET` Test Railgun connection to the Zone

> GET zones/:zone_identifier/railguns/:identifier/diagnose
