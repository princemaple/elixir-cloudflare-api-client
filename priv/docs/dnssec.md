## DNSSEC

Manage DNSSEC for a zone

### DNSSEC Details

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Details about DNSSEC status and configuration

> GET zones/:zone_identifier/dnssec


### Edit DNSSEC Status

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Enable or disable DNSSEC

> PATCH zones/:zone_identifier/dnssec


### Delete DNSSEC records

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Delete DNSSEC

> DELETE zones/:zone_identifier/dnssec

