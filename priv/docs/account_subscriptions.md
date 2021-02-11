# Account Subscriptions

Listing of an account's subscriptions

## List Subscriptions

`GET` Lists all an account's subscriptions

> GET accounts/:account_identifier/subscriptions

**Permission needed:** `#billing:read`

Available in:

* free
* pro
* business
* enterprise


## Create Subscription

`POST` Create an account subscription.

> POST accounts/:account_identifier/subscriptions

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise


## Update Subscription

`PUT` Update an account subscriptions.

> PUT accounts/:account_identifier/subscriptions/:subscription_identifier

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise


## Delete Subscription

`DELETE` Deletes an account's subscription

> DELETE accounts/:account_identifier/subscriptions/:subscription_identifier

**Permission needed:** `#billing:edit`

Available in:



