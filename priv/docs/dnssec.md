# DNSSEC

Manage DNSSEC for a zone

## DNSSEC Details

`GET` Details about DNSSEC status and configuration

> GET zones/:zone_identifier/dnssec

**Permission needed:** `#zone_settings:read`

Available in:

* free
* pro
* business
* enterprise


## Edit DNSSEC Status

`PATCH` Enable or disable DNSSEC

> PATCH zones/:zone_identifier/dnssec

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise


## Delete DNSSEC records

`DELETE` Delete DNSSEC

> DELETE zones/:zone_identifier/dnssec

**Permission needed:** `#zone_settings:edit`

Available in:

* free
* pro
* business
* enterprise

