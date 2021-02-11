# Keyless SSL for a Zone

A Keyless certificate is an SSL certificate where the SSL private key is not stored on Cloudflare

## List Keyless SSL Configurations

`GET` List all Keyless SSL configurations for a given zone

> GET zones/:zone_identifier/keyless_certificates

**Permission needed:** `#ssl:read`

Available in:

* enterprise


## Create Keyless SSL Configuration

`POST` 

> POST zones/:zone_identifier/keyless_certificates

**Permission needed:** `#ssl:edit`

Available in:

* enterprise


## Get Keyless SSL Configuration

`GET` Get details for one Keyless SSL configuration

> GET zones/:zone_identifier/keyless_certificates/:identifier

**Permission needed:** `#ssl:read`

Available in:

* enterprise


## Edit Keyless SSL Configuration

`PATCH` This will update attributes of a Keyless SSL. Consists of one or more of the following:  host,name,port,certificate,enabled

> PATCH zones/:zone_identifier/keyless_certificates/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* enterprise


## Delete Keyless SSL Configuration

`DELETE` 

> DELETE zones/:zone_identifier/keyless_certificates/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* enterprise

