# Custom SSL for a Zone

Custom SSL certificate for a zone

## List SSL Configurations

`GET` List, search, and filter all of your custom SSL certificates. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.

> GET zones/:zone_identifier/custom_certificates

**Permission needed:** `#ssl:read`

Available in:

* business
* enterprise


## Create SSL Configuration

`POST` Upload a new SSL certificate for a zone

> POST zones/:zone_identifier/custom_certificates

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise


## SSL Configuration Details

`GET` 

> GET zones/:zone_identifier/custom_certificates/:identifier

**Permission needed:** `#ssl:read`

Available in:

* business
* enterprise


## Edit SSL Configuration

`PATCH` Upload a new private key and/or PEM/CRT for the SSL certificate. Note: PATCHing a configuration for sni_custom certificates will result in a new resource id being returned, and the previous one being deleted.

> PATCH zones/:zone_identifier/custom_certificates/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise


## Delete SSL Configuration

`DELETE` Remove a SSL certificate from a zone.

> DELETE zones/:zone_identifier/custom_certificates/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise


## Re-prioritize SSL Certificates

`PUT` If a zone has multiple SSL certificates, you can set the order in which they should be used during a request. The higher priority will break ties across overlapping 'legacy_custom' certificates.

> PUT zones/:zone_identifier/custom_certificates/prioritize

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise

