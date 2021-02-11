## Zone-Level Access Mutual TLS Authentication

Mutual TLS authentication ensures that the traffic is secure and trusted in both directions between a client and server. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-mutual-tls-authentication-properties.)

### List Access Certificates

**Permission needed:** `None`

Available in:



`GET` List Access Certificates

> GET zones/:identifier/access/certificates


### Access Certificate Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single Access Certificate

> GET zones/:identifier/access/certificates/:uuid


### Create Access Certificate

**Permission needed:** `None`

Available in:



`POST` Create a new Access Certificate

> POST zones/:identifier/access/certificates


### Update Access Certificate

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Certificate

> PUT zones/:identifier/access/certificates/:uuid


### Delete Access Certificate

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Certificate

> DELETE zones/:identifier/access/certificates/:uuid

