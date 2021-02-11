# Per-hostname Authenticated Origin Pull

Setup a client certficate per hostname to be sent in a request to Origin

## Upload a Hostname Client Certificate

`POST` Upload a certificate to be used for client authentication on a hostname. 10 hostname certificates per zone are allowed

> POST zones/:zone_identifier/origin_tls_client_auth/hostnames/certificates

**Permission needed:** `#ssl:edit`

Available in:

* free
* pro
* business
* enterprise


## Get the Hostname Client Certificate

`GET` Get the certificate by ID to be used for client authentication on a hostname

> GET zones/:zone_identifier/origin_tls_client_auth/hostnames/certificates/:identifier

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise


## Delete Hostname Client Certificate

`DELETE` 

> DELETE zones/:zone_identifier/origin_tls_client_auth/hostnames/certificates/:identifier

**Permission needed:** `#ssl:edit`

Available in:

* free
* pro
* business
* enterprise


## Enable or Disable a Hostname for Client Authentication

`PUT` Associate a hostname to a certificate and enable, disable or invalidate the association. If disabled, client certificate will not be sent to the hostname even if activated at the zone level. 100 maximum associations on a single certificate are allowed

> PUT zones/:zone_identifier/origin_tls_client_auth/hostnames

**Permission needed:** `#ssl:edit`

Available in:

* free
* pro
* business
* enterprise


## Get the Hostname Status for Client Authentication

`GET` 

> GET zones/:zone_identifier/origin_tls_client_auth/hostnames/:hostname

**Permission needed:** `#ssl:read`

Available in:

* free
* pro
* business
* enterprise

