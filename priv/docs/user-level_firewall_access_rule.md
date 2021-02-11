## List Access Rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Search, sort, and filter IP/country access rules

> GET user/firewall/access_rules/rules


## Create Access Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`POST` Make a new IP, IP range, or country access rule for all zones owned by the user. Note: If you would like to create an access rule that applies to a specific zone only, use the zone firewall endpoints.

> POST user/firewall/access_rules/rules


## Edit Access Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Edit rule state and/or note. This will be applied across all zones owned by the user.

> PATCH user/firewall/access_rules/rules/:identifier


## Delete Access Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Remove an access rule so it is no longer evaluated during requests. This will apply to all zones owned by the user

> DELETE user/firewall/access_rules/rules/:identifier
