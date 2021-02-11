# Zone-Level Authenticated Origin Pulls

Setup authenticated origin pulls for your zone.

## Get Enablement Setting for Zone

`GET` Get whether zone-level authenticated origin pulls is enabled or not. It is false by default.

> GET zones/:zone_identifier/origin_tls_client_auth/settings

**Permission needed:** `#ssl:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Set Enablement for Zone

`PUT` Enable or disable zone-level authenticated origin pulls. 'enabled' should be set true either before/after the certificate is uploaded to see the certificate in use.

> PUT zones/:zone_identifier/origin_tls_client_auth/settings

**Permission needed:** `#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Upload Certificate

`POST` Upload your own certificate you want Cloudflare to use for edge-to-origin communication to override the shared certificate. Please note that it is important to keep only one certificate active. Also, make sure to enable zone-level authenticated origin pulls by making a PUT call to settings endpoint to see the uploaded certificate in use.

> POST zones/:zone_identifier/origin_tls_client_auth

**Permission needed:** `#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## List Certificates

`GET` 

> GET zones/:zone_identifier/origin_tls_client_auth

**Permission needed:** `#ssl:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get Certificate Details

`GET` 

> GET zones/:zone_identifier/origin_tls_client_auth/:identifier

**Permission needed:** `#ssl:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete Certificate

`DELETE` 

> DELETE zones/:zone_identifier/origin_tls_client_auth/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

