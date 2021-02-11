# Zone-Level Access Mutual TLS Authentication

Mutual TLS authentication ensures that the traffic is secure and trusted in both directions between a client and server. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-mutual-tls-authentication-properties.)

## List Access Certificates

`GET` List Access Certificates

> GET zones/:identifier/access/certificates

**Permission needed:** `None`

Available in:




## Access Certificate Details

`GET` Fetch a single Access Certificate

> GET zones/:identifier/access/certificates/:uuid

**Permission needed:** `None`

Available in:




## Create Access Certificate

`POST` Create a new Access Certificate

> POST zones/:identifier/access/certificates

**Permission needed:** `None`

Available in:




## Update Access Certificate

`PUT` Update a configured Access Certificate

> PUT zones/:identifier/access/certificates/:uuid

**Permission needed:** `None`

Available in:




## Delete Access Certificate

`DELETE` Delete an Access Certificate

> DELETE zones/:identifier/access/certificates/:uuid

**Permission needed:** `None`

Available in:



