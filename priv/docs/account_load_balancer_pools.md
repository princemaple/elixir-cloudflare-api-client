# Account Load Balancer Pools

Account-level Load Balancer Pools

## List Pools

`GET` List configured pools

> GET accounts/:account_identifier/load_balancers/pools

**Permission needed:** `None`

Available in:




## Create Pool

`POST` Create a new pool

> POST accounts/:account_identifier/load_balancers/pools

**Permission needed:** `None`

Available in:




## Pool Details

`GET` Fetch a single configured pool

> GET accounts/:account_identifier/load_balancers/pools/:identifier

**Permission needed:** `None`

Available in:




## Pool Health Details

`GET` Fetch latest healthcheck details for a single pool

> GET accounts/:account_identifier/load_balancers/pools/:identifier/health

**Permission needed:** `None`

Available in:




## Update Pool

`PUT` Modify a configured pool

> PUT accounts/:account_identifier/load_balancers/pools/:identifier

**Permission needed:** `None`

Available in:




## Patch Pool

`PATCH` Apply changes to an existing pool, overwriting the supplied properties.

> PATCH accounts/:account_identifier/load_balancers/pools/:identifier

**Permission needed:** `None`

Available in:




## Delete Pool

`DELETE` Delete a configured pool

> DELETE accounts/:account_identifier/load_balancers/pools/:identifier

**Permission needed:** `None`

Available in:




## Preview Pool

`POST` Preview pool health using provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

> POST accounts/:account_identifier/load_balancers/pools/:identifier/preview

**Permission needed:** `None`

Available in:




## List Pool References

`GET` Get the list of resources that reference the provided pool

> GET accounts/:account_identifier/load_balancers/pools/:identifier/references

**Permission needed:** `None`

Available in:



