# Account Load Balancer Pools

## Create Pool

**POST** `/accounts/{account_id}/load_balancers/pools`

Create a new pool.


## Patch Pools

**PATCH** `/accounts/{account_id}/load_balancers/pools`

Apply changes to a number of existing pools, overwriting the supplied properties. Pools are ordered by ascending `name`. Returns the list of affected pools. Supports the standard pagination query parameters, either `limit`/`offset` or `per_page`/`page`.


## List Pools

**GET** `/accounts/{account_id}/load_balancers/pools`

List configured pools.


## Update Pool

**PUT** `/accounts/{account_id}/load_balancers/pools/{pool_id}`

Modify a configured pool.


## Patch Pool

**PATCH** `/accounts/{account_id}/load_balancers/pools/{pool_id}`

Apply changes to an existing pool, overwriting the supplied properties.


## Pool Details

**GET** `/accounts/{account_id}/load_balancers/pools/{pool_id}`

Fetch a single configured pool.


## Delete Pool

**DELETE** `/accounts/{account_id}/load_balancers/pools/{pool_id}`

Delete a configured pool.


## Pool Health Details

**GET** `/accounts/{account_id}/load_balancers/pools/{pool_id}/health`

Fetch the latest pool health status for a single pool.


## Preview Pool

**POST** `/accounts/{account_id}/load_balancers/pools/{pool_id}/preview`

Preview pool health using provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.


## List Pool References

**GET** `/accounts/{account_id}/load_balancers/pools/{pool_id}/references`

Get the list of resources that reference the provided pool.

