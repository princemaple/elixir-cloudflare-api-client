## Zone-Level Access Policy

Access Policies define the users or groups who can, or cannot, reach the Application Resource. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-policy-properties.)

### List Access Policies

**Permission needed:** `None`

Available in:



`GET` List Access Policies for an Access Application

> GET zones/:identifier/access/apps/:uuid/policies


### Access Policy Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single Access Policy

> GET zones/:identifier/access/apps/:uuid/policies/:uuid


### Create Access Policy

**Permission needed:** `None`

Available in:



`POST` Create a new Access Policy

> POST zones/:identifier/access/apps/:uuid/policies


### Update Access Policy

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Policy

> PUT zones/:identifier/access/apps/:uuid/policies/:uuid


### Delete Access Policy

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Policy

> DELETE zones/:identifier/access/apps/:uuid/policies/:uuid

