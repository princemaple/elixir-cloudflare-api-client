## Load Balancer Pools

User-level Load Balancer Pools

### List Pools

**Permission needed:** `None`

Available in:



`GET` List configured pools

> GET user/load_balancers/pools


### Create Pool

**Permission needed:** `None`

Available in:



`POST` Create a new pool

> POST user/load_balancers/pools


### Pool Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single configured pool

> GET user/load_balancers/pools/:identifier


### Pool Health Details

**Permission needed:** `None`

Available in:



`GET` Fetch latest healthcheck details for a single pool

> GET user/load_balancers/pools/:identifier/health


### Update Pool

**Permission needed:** `None`

Available in:



`PUT` Modify a configured pool

> PUT user/load_balancers/pools/:identifier


### Patch Pool

**Permission needed:** `None`

Available in:



`PATCH` Apply changes to an existing pool, overwriting the supplied properties.

> PATCH user/load_balancers/pools/:identifier


### Delete Pool

**Permission needed:** `None`

Available in:



`DELETE` Delete a configured pool

> DELETE user/load_balancers/pools/:identifier


### Preview Pool

**Permission needed:** `None`

Available in:



`POST` Preview pool health using provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

> POST user/load_balancers/pools/:identifier/preview


### List Pool References

**Permission needed:** `None`

Available in:



`GET` Get the list of resources that reference the provided pool

> GET user/load_balancers/pools/:identifier/references

