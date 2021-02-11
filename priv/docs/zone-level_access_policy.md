# Zone-Level Access Policy

Access Policies define the users or groups who can, or cannot, reach the Application Resource. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-policy-properties.)

## List Access Policies

`GET` List Access Policies for an Access Application

> GET zones/:identifier/access/apps/:uuid/policies

**Permission needed:** `None`

Available in:




## Access Policy Details

`GET` Fetch a single Access Policy

> GET zones/:identifier/access/apps/:uuid/policies/:uuid

**Permission needed:** `None`

Available in:




## Create Access Policy

`POST` Create a new Access Policy

> POST zones/:identifier/access/apps/:uuid/policies

**Permission needed:** `None`

Available in:




## Update Access Policy

`PUT` Update a configured Access Policy

> PUT zones/:identifier/access/apps/:uuid/policies/:uuid

**Permission needed:** `None`

Available in:




## Delete Access Policy

`DELETE` Delete an Access Policy

> DELETE zones/:identifier/access/apps/:uuid/policies/:uuid

**Permission needed:** `None`

Available in:



