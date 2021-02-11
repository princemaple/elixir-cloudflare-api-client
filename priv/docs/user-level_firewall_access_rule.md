# User-level Firewall Access Rule

A firewall access rule applied to all zones owned by the user

## List Access Rules

`GET` Search, sort, and filter IP/country access rules

> GET user/firewall/access_rules/rules

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create Access Rule

`POST` Make a new IP, IP range, or country access rule for all zones owned by the user. Note: If you would like to create an access rule that applies to a specific zone only, use the zone firewall endpoints.

> POST user/firewall/access_rules/rules

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Edit Access Rule

`PATCH` Edit rule state and/or note. This will be applied across all zones owned by the user.

> PATCH user/firewall/access_rules/rules/:identifier

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete Access Rule

`DELETE` Remove an access rule so it is no longer evaluated during requests. This will apply to all zones owned by the user

> DELETE user/firewall/access_rules/rules/:identifier

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

