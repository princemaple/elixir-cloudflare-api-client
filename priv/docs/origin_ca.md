# Origin CA

API to create Cloudflare-issued SSL certificates that can be installed on your origin server. Use your Origin CA Key as your User Service Key when calling these endpoints (see the section on request headers for details).

## List Certificates

`GET` List all existing Origin CA certificates for a given zone. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> GET certificates

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create Certificate

`POST` Create an Origin CA certificate. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> POST certificates

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get Certificate

`GET` Get an existing Origin CA certificate by its serial number. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> GET certificates/:identifier

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Revoke Certificate

`DELETE` Revoke an existing Origin CA certificate by its serial number. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> DELETE certificates/:identifier

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

