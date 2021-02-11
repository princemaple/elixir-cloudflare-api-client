# Zone-Level Access Applications

Access Applications define the routes that Access will block. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-applications-properties.)

## List Access Applications

`GET` List Access Applications for a zone

> GET zones/:identifier/access/apps

**Permission needed:** `None`

Available in:




## Access Applications Details

`GET` Fetch a single Access Application

> GET zones/:identifier/access/apps/:uuid

**Permission needed:** `None`

Available in:




## Create Access Application

`POST` Create a new Access Application

> POST zones/:identifier/access/apps

**Permission needed:** `None`

Available in:




## Update Access Application

`PUT` Update a configured Access Application

> PUT zones/:identifier/access/apps/:uuid

**Permission needed:** `None`

Available in:




## Delete Access Application

`DELETE` Delete an Access Application

> DELETE zones/:identifier/access/apps/:uuid

**Permission needed:** `None`

Available in:




## Revoke Access Tokens

`POST` Revoke any outstanding tokens issued for the Application.

> POST zones/:identifier/access/apps/:uuid/revoke_tokens

**Permission needed:** `None`

Available in:



