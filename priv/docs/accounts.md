## Accounts

An Account is the root object which owns other resources such as zones, load balancers and billing details.

### List Accounts

**Permission needed:** `#organization:read`

Available in:

* free
* pro
* business
* enterprise

`GET` List all accounts you have ownership or verified access to

> GET accounts


### Account Details

**Permission needed:** `#organization:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Get information about a specific account that you are a member of

> GET accounts/:identifier


### Update Account

**Permission needed:** `#organization:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update an existing Account

> PUT accounts/:identifier

