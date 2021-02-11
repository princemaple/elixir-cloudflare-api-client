## Zone Subscription

A subscription associated with a zone containing plan and add-ons

### Zone Subscription Details

**Permission needed:** `#billing:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Zone subscription details

> GET zones/:identifier/subscription


### Update Zone Subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update Zone subscriptions. Either plan and add-ons

> PUT zones/:identifier/subscription


### Create Zone Subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` Create a Zone subscriptions. Either plan or add-ons

> POST zones/:identifier/subscription

