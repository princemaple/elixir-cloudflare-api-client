## List Access Rules

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Search, sort, and filter IP/country access rules

> GET zones/:zone_id/firewall/access_rules/rules


## Create Access Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`POST` Make a new IP, IP range, or country access rule for the zone. Note: If you would like to create an access rule that applies across all of your owned zones, use the user or organization firewall endpoints as appropriate.

> POST zones/:zone_id/firewall/access_rules/rules


## Edit Access Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Update rule state and/or note for the zone. Note: you can only edit rules in the 'zone' group via this endpoint. Use the appropriate owner rules endpoint if trying to manage owner-level rules

> PATCH zones/:zone_id/firewall/access_rules/rules/:identifier


## Delete Access Rule

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Remove an access rule so it is no longer evaluated during requests. Optionally, specify how to delete rules that match the mode and configuration across all other zones that this zone owner manages. 'none' is the default, and will only delete this rule. 'basic' will delete rules that match the same mode and configuration. 'aggressive' will delete rules that match the same configuration.

> DELETE zones/:zone_id/firewall/access_rules/rules/:identifier
