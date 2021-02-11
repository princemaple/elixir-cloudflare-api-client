## List Access Rules

**Permission needed:** `#waf:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Search, sort, and filter IP/country access rules

> GET accounts/:account_identifier/firewall/access_rules/rules


## Create Access Rule

**Permission needed:** `#waf:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` Make a new IP, IP range, or country access rule for all zones owned by the account. Note: If you would like to create an access rule that applies to a specific zone only, use the zone firewall endpoints.

> POST accounts/:account_identifier/firewall/access_rules/rules


## Access Rule Details

**Permission needed:** `#waf:read`

Available in:

* free
* pro
* business
* enterprise

`GET` Get the details of an access rule

> GET accounts/:account_identifier/firewall/access_rules/rules/:identifier


## Update Access Rule

**Permission needed:** `#waf:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Update rule state and/or configuration. This will be applied across all zones owned by the account.

> PATCH accounts/:account_identifier/firewall/access_rules/rules/:identifier


## Delete Access Rule

**Permission needed:** `#waf:edit`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Remove an access rule so it is no longer evaluated during requests. This will apply to all zones owned by the account

> DELETE accounts/:account_identifier/firewall/access_rules/rules/:identifier
