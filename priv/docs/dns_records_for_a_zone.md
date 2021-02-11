## List DNS Records

**Permission needed:** `#dns_records:read`

Available in:

* free
* pro
* business
* enterprise

`GET` List, search, sort, and filter a zones' DNS records.

> GET zones/:zone_identifier/dns_records


## Create DNS Record

**Permission needed:** `#dns_records:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` Create a new DNS record for a zone. See the record object definitions for required attributes for each record type

> POST zones/:zone_identifier/dns_records


## DNS Record Details

**Permission needed:** `#dns_records:read`

Available in:

* free
* pro
* business
* enterprise

`GET` 

> GET zones/:zone_identifier/dns_records/:identifier


## Update DNS Record

**Permission needed:** `#dns_records:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` 

> PUT zones/:zone_identifier/dns_records/:identifier


## Patch DNS Record

**Permission needed:** `#dns_records:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` 

> PATCH zones/:zone_identifier/dns_records/:identifier


## Delete DNS Record

**Permission needed:** `#dns_records:edit`

Available in:

* free
* pro
* business
* enterprise

`DELETE` 

> DELETE zones/:zone_identifier/dns_records/:identifier


## Import DNS Records

**Permission needed:** `#dns_records:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` You can upload your BIND config through this endpoint. It assumes that cURL is called from a location with bind_config.txt (valid BIND config) present.

> POST zones/:zone_identifier/dns_records/import


## Export DNS Records

**Permission needed:** `#dns_records:read`

Available in:

* free
* pro
* business
* enterprise

`GET` You can export your BIND config through this endpoint.

> GET zones/:zone_identifier/dns_records/export
