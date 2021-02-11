## Access Applications

Access Applications define the routes that Access will block.

### List Access Applications

**Permission needed:** `None`

Available in:



`GET` List Access Applications for an account

> GET accounts/:identifier/access/apps


### Access Applications Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single Access Application

> GET accounts/:identifier/access/apps/:uuid


### Create Access Application

**Permission needed:** `None`

Available in:



`POST` Create a new Access Application

> POST accounts/:identifier/access/apps


### Update Access Application

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Application

> PUT accounts/:identifier/access/apps/:uuid


### Delete Access Application

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Application

> DELETE accounts/:identifier/access/apps/:uuid


### Revoke Access Tokens

**Permission needed:** `None`

Available in:



`POST` Revoke any outstanding tokens issued for the Application.

> POST accounts/:identifier/access/apps/:uuid/revoke_tokens

