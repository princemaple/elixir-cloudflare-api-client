## List Certificate Packs

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise

`GET` For a given zone, list all active certificate packs

> GET zones/:zone_identifier/ssl/certificate_packs


## Get Certificate Pack

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise

`GET` For a given zone, get a certificate pack

> GET zones/:zone_identifier/ssl/certificate_packs/:identifier


## Get Certificate Pack Quotas

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise

`GET` For a given zone, list certificate pack quotas

> GET zones/:zone_identifier/ssl/certificate_packs/quota


## Order Certificate Pack

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` For a given zone, order a certificate pack with a list of hostnames

> POST zones/:zone_identifier/ssl/certificate_packs


## Order Advanced Certificate Manager Certificate Pack

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` For a given zone, order an advanced certificate pack

> POST zones/:zone_identifier/ssl/certificate_packs/order


## Restart Validation for Advanced Certificate Manager Certificate Pack

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` For a given zone, restart validation for an advanced certificate pack.  This is only a validation operation for a Certificate Pack in a validation_timed_out status.

> PATCH zones/:zone_identifier/ssl/certificate_packs/:identifier


## Delete Advanced Certificate Manager Certificate Pack

**Permission needed:** `#ssl:read#ssl:edit`

Available in:

* free
* pro
* business
* enterprise

`DELETE` For a given zone, delete an advanced certificate pack

> DELETE zones/:zone_identifier/ssl/certificate_packs/:identifier
