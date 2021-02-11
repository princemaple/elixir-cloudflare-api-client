# Access Applications

Access Applications define the routes that Access will block.

## List Access Applications

`GET` List Access Applications for an account

> GET accounts/:identifier/access/apps

**Permission needed:** `None`

Available in:




## Access Applications Details

`GET` Fetch a single Access Application

> GET accounts/:identifier/access/apps/:uuid

**Permission needed:** `None`

Available in:




## Create Access Application

`POST` Create a new Access Application

> POST accounts/:identifier/access/apps

**Permission needed:** `None`

Available in:




## Update Access Application

`PUT` Update a configured Access Application

> PUT accounts/:identifier/access/apps/:uuid

**Permission needed:** `None`

Available in:




## Delete Access Application

`DELETE` Delete an Access Application

> DELETE accounts/:identifier/access/apps/:uuid

**Permission needed:** `None`

Available in:




## Revoke Access Tokens

`POST` Revoke any outstanding tokens issued for the Application.

> POST accounts/:identifier/access/apps/:uuid/revoke_tokens

**Permission needed:** `None`

Available in:



