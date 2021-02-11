## Custom SSL for a Zone

Custom SSL certificate for a zone

### List SSL Configurations

**Permission needed:** `#ssl:read`

Available in:

* business
* enterprise

`GET` List, search, and filter all of your custom SSL certificates. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.

> GET zones/:zone_identifier/custom_certificates


### Create SSL Configuration

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise

`POST` Upload a new SSL certificate for a zone

> POST zones/:zone_identifier/custom_certificates


### SSL Configuration Details

**Permission needed:** `#ssl:read`

Available in:

* business
* enterprise

`GET` 

> GET zones/:zone_identifier/custom_certificates/:identifier


### Edit SSL Configuration

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise

`PATCH` Upload a new private key and/or PEM/CRT for the SSL certificate. Note: PATCHing a configuration for sni_custom certificates will result in a new resource id being returned, and the previous one being deleted.

> PATCH zones/:zone_identifier/custom_certificates/:identifier


### Delete SSL Configuration

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise

`DELETE` Remove a SSL certificate from a zone.

> DELETE zones/:zone_identifier/custom_certificates/:identifier


### Re-prioritize SSL Certificates

**Permission needed:** `#ssl:edit`

Available in:

* business
* enterprise

`PUT` If a zone has multiple SSL certificates, you can set the order in which they should be used during a request. The higher priority will break ties across overlapping 'legacy_custom' certificates.

> PUT zones/:zone_identifier/custom_certificates/prioritize

