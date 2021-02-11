# DNS Records for a Zone

Documentation for Cloudflare DNS records

## List DNS Records

`GET` List, search, sort, and filter a zones' DNS records.

> GET zones/:zone_identifier/dns_records

**Permission needed:** `#dns_records:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create DNS Record

`POST` Create a new DNS record for a zone. See the record object definitions for required attributes for each record type

> POST zones/:zone_identifier/dns_records

**Permission needed:** `#dns_records:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## DNS Record Details

`GET` 

> GET zones/:zone_identifier/dns_records/:identifier

**Permission needed:** `#dns_records:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Update DNS Record

`PUT` 

> PUT zones/:zone_identifier/dns_records/:identifier

**Permission needed:** `#dns_records:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Patch DNS Record

`PATCH` 

> PATCH zones/:zone_identifier/dns_records/:identifier

**Permission needed:** `#dns_records:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete DNS Record

`DELETE` 

> DELETE zones/:zone_identifier/dns_records/:identifier

**Permission needed:** `#dns_records:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Import DNS Records

`POST` You can upload your BIND config through this endpoint. It assumes that cURL is called from a location with bind_config.txt (valid BIND config) present.

> POST zones/:zone_identifier/dns_records/import

**Permission needed:** `#dns_records:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Export DNS Records

`GET` You can export your BIND config through this endpoint.

> GET zones/:zone_identifier/dns_records/export

**Permission needed:** `#dns_records:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

