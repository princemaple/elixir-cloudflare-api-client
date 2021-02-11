# Zone Subscription

A subscription associated with a zone containing plan and add-ons

## Zone Subscription Details

`GET` Zone subscription details

> GET zones/:identifier/subscription

**Permission needed:** `#billing:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Update Zone Subscription

`PUT` Update Zone subscriptions. Either plan and add-ons

> PUT zones/:identifier/subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create Zone Subscription

`POST` Create a Zone subscriptions. Either plan or add-ons

> POST zones/:identifier/subscription

**Permission needed:** `#billing:read#billing:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

