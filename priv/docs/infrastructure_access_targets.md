# Infrastructure Access Targets

## Create new target

**POST** `/accounts/{account_id}/infrastructure/targets`




## List all targets

**GET** `/accounts/{account_id}/infrastructure/targets`

Lists and sorts an account’s targets. Filters are optional and are ANDed
together.


## Create new targets

**PUT** `/accounts/{account_id}/infrastructure/targets/batch`

Adds one or more targets.


## Delete targets (Deprecated)

**DELETE** `/accounts/{account_id}/infrastructure/targets/batch`

Removes one or more targets.


## Delete targets

**POST** `/accounts/{account_id}/infrastructure/targets/batch_delete`

Removes one or more targets.


## Update target

**PUT** `/accounts/{account_id}/infrastructure/targets/{target_id}`




## Get target

**GET** `/accounts/{account_id}/infrastructure/targets/{target_id}`




## Delete target

**DELETE** `/accounts/{account_id}/infrastructure/targets/{target_id}`



