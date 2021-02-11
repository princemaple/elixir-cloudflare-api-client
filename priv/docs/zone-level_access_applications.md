## Zone-Level Access Applications

Access Applications define the routes that Access will block. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-applications-properties.)

### List Access Applications

**Permission needed:** `None`

Available in:



`GET` List Access Applications for a zone

> GET zones/:identifier/access/apps


### Access Applications Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single Access Application

> GET zones/:identifier/access/apps/:uuid


### Create Access Application

**Permission needed:** `None`

Available in:



`POST` Create a new Access Application

> POST zones/:identifier/access/apps


### Update Access Application

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Application

> PUT zones/:identifier/access/apps/:uuid


### Delete Access Application

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Application

> DELETE zones/:identifier/access/apps/:uuid


### Revoke Access Tokens

**Permission needed:** `None`

Available in:



`POST` Revoke any outstanding tokens issued for the Application.

> POST zones/:identifier/access/apps/:uuid/revoke_tokens

