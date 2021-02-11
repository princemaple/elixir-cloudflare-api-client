## Zone-Level Access Groups

Access Groups allow you to define a set of users to which an application policy can be applied. You can reuse Access groups to quickly create policies that apply to the same set of users. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-groups-properties.)

### List Access Groups

**Permission needed:** `None`

Available in:



`GET` List Access Groups

> GET zones/:identifier/access/groups


### Access Group Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single Access Group

> GET zones/:identifier/access/groups/:uuid


### Create Access Group

**Permission needed:** `None`

Available in:



`POST` Create a new Access Group

> POST zones/:identifier/access/groups


### Update Access Group

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Group

> PUT zones/:identifier/access/groups/:uuid


### Delete Access Group

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Group

> DELETE zones/:identifier/access/groups/:uuid

