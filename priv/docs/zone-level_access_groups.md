# Zone-Level Access Groups

Access Groups allow you to define a set of users to which an application policy can be applied. You can reuse Access groups to quickly create policies that apply to the same set of users. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-groups-properties.)

## List Access Groups

`GET` List Access Groups

> GET zones/:identifier/access/groups

**Permission needed:** `None`

Available in:




## Access Group Details

`GET` Fetch a single Access Group

> GET zones/:identifier/access/groups/:uuid

**Permission needed:** `None`

Available in:




## Create Access Group

`POST` Create a new Access Group

> POST zones/:identifier/access/groups

**Permission needed:** `None`

Available in:




## Update Access Group

`PUT` Update a configured Access Group

> PUT zones/:identifier/access/groups/:uuid

**Permission needed:** `None`

Available in:




## Delete Access Group

`DELETE` Delete an Access Group

> DELETE zones/:identifier/access/groups/:uuid

**Permission needed:** `None`

Available in:



