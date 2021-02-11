## Get User Subscriptions

**Permission needed:** `#billing:read`

Available in:



`GET` Lists all a user's subscriptions

> GET user/subscriptions


## Update User Subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update a user subscriptions.

> PUT user/subscriptions/:identifier


## Delete User Subscription

**Permission needed:** `#billing:edit`

Available in:



`DELETE` Deletes a user's subscription

> DELETE user/subscriptions/:identifier
