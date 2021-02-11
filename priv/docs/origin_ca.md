## List Certificates

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` List all existing Origin CA certificates for a given zone. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> GET certificates


## Create Certificate

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`POST` Create an Origin CA certificate. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> POST certificates


## Get Certificate

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Get an existing Origin CA certificate by its serial number. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> GET certificates/:identifier


## Revoke Certificate

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Revoke an existing Origin CA certificate by its serial number. Use your Origin CA Key as your User Service Key when calling this endpoint (see above).

> DELETE certificates/:identifier
