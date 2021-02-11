# Accounts

An Account is the root object which owns other resources such as zones, load balancers and billing details.

## List Accounts

`GET` List all accounts you have ownership or verified access to

> GET accounts

**Permission needed:** `#organization:read`

Available in:

* free
* pro
* business
* enterprise


## Account Details

`GET` Get information about a specific account that you are a member of

> GET accounts/:identifier

**Permission needed:** `#organization:read`

Available in:

* free
* pro
* business
* enterprise


## Update Account

`PUT` Update an existing Account

> PUT accounts/:identifier

**Permission needed:** `#organization:edit`

Available in:

* free
* pro
* business
* enterprise

