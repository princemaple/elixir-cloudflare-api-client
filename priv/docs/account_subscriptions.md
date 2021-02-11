## List Subscriptions

**Permission needed:** `#billing:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Lists all an account's subscriptions

> GET accounts/:account_identifier/subscriptions


## Create Subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` Create an account subscription.

> POST accounts/:account_identifier/subscriptions


## Update Subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update an account subscriptions.

> PUT accounts/:account_identifier/subscriptions/:subscription_identifier


## Delete Subscription

**Permission needed:** `#billing:edit`

Available in:



`DELETE` Deletes an account's subscription

> DELETE accounts/:account_identifier/subscriptions/:subscription_identifier
