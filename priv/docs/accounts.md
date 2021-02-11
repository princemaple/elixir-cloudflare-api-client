# Accounts

An Account is the root object which owns other resources such as zones, load balancers and billing details.

## List Accounts

`GET` List all accounts you have ownership or verified access to

> GET accounts

**Permission needed:** `#organization:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Account Details

`GET` Get information about a specific account that you are a member of

> GET accounts/:identifier

**Permission needed:** `#organization:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Update Account

`PUT` Update an existing Account

> PUT accounts/:identifier

**Permission needed:** `#organization:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

