# Railgun Connections for a Zone

Railguns associated with a zone

## List Available Railguns

`GET` A list of available Railguns the zone can use

> GET zones/:zone_identifier/railguns

**Permission needed:** `#zone_settings:read`

Available in:

* BUSINESS
* ENTERPRISE


## Railgun Details

`GET` Details about a specific Railgun

> GET zones/:zone_identifier/railguns/:identifier

**Permission needed:** `#zone_settings:read`

Available in:

* BUSINESS
* ENTERPRISE


## Connect or Disconnect a Railgun

`PATCH` Connect or disconnect a Railgun

> PATCH zones/:zone_identifier/railguns/:identifier

**Permission needed:** `#zone_settings:edit`

Available in:

* BUSINESS
* ENTERPRISE


## Test Railgun Connection

`GET` Test Railgun connection to the Zone

> GET zones/:zone_identifier/railguns/:identifier/diagnose

**Permission needed:** `#zone_settings:read`

Available in:

* BUSINESS
* ENTERPRISE

