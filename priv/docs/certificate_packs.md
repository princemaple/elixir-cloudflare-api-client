# Certificate Packs



## List Certificate Packs

`GET` For a given zone, list all active certificate packs

> GET zones/:zone_identifier/ssl/certificate_packs

**Permission needed:** `#ssl:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get Certificate Pack

`GET` For a given zone, get a certificate pack

> GET zones/:zone_identifier/ssl/certificate_packs/:identifier

**Permission needed:** `#ssl:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get Certificate Pack Quotas

`GET` For a given zone, list certificate pack quotas

> GET zones/:zone_identifier/ssl/certificate_packs/quota

**Permission needed:** `#ssl:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Order Certificate Pack

`POST` For a given zone, order a certificate pack with a list of hostnames

> POST zones/:zone_identifier/ssl/certificate_packs

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Order Advanced Certificate Manager Certificate Pack

`POST` For a given zone, order an advanced certificate pack

> POST zones/:zone_identifier/ssl/certificate_packs/order

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Restart Validation for Advanced Certificate Manager Certificate Pack

`PATCH` For a given zone, restart validation for an advanced certificate pack.  This is only a validation operation for a Certificate Pack in a validation_timed_out status.

> PATCH zones/:zone_identifier/ssl/certificate_packs/:identifier

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete Advanced Certificate Manager Certificate Pack

`DELETE` For a given zone, delete an advanced certificate pack

> DELETE zones/:zone_identifier/ssl/certificate_packs/:identifier

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

