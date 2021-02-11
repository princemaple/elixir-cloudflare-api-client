## Keyless SSL for a Zone

A Keyless certificate is an SSL certificate where the SSL private key is not stored on Cloudflare

### List Keyless SSL Configurations

**Permission needed:** `#ssl:read`

Available in:

* enterprise

`GET` List all Keyless SSL configurations for a given zone

> GET zones/:zone_identifier/keyless_certificates


### Create Keyless SSL Configuration

**Permission needed:** `#ssl:edit`

Available in:

* enterprise

`POST` 

> POST zones/:zone_identifier/keyless_certificates


### Get Keyless SSL Configuration

**Permission needed:** `#ssl:read`

Available in:

* enterprise

`GET` Get details for one Keyless SSL configuration

> GET zones/:zone_identifier/keyless_certificates/:identifier


### Edit Keyless SSL Configuration

**Permission needed:** `#ssl:edit`

Available in:

* enterprise

`PATCH` This will update attributes of a Keyless SSL. Consists of one or more of the following:  host,name,port,certificate,enabled

> PATCH zones/:zone_identifier/keyless_certificates/:identifier


### Delete Keyless SSL Configuration

**Permission needed:** `#ssl:edit`

Available in:

* enterprise

`DELETE` 

> DELETE zones/:zone_identifier/keyless_certificates/:identifier

