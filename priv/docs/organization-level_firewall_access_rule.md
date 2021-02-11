# Organization-level Firewall Access Rule

A firewall access rule applied to all zones owned by the organization

## List Access Rules

`GET` Search, sort, and filter IP/country access rules

> GET organizations/:organization_id/firewall/access_rules/rules

**Permission needed:** `#waf:edit`

Available in:

* enterprise


## Create Access Rule

`POST` Make a new IP, IP range, or country access rule for all zones owned by the organization. Note: If you would like to create an access rule that applies to a specific zone only, use the zone firewall endpoints.

> POST organizations/:organization_id/firewall/access_rules/rules

**Permission needed:** `#waf:edit`

Available in:

* enterprise


## Edit Access Rule

`PATCH` Edit rule state and/or note. This will be applied across all zones owned by the organization.

> PATCH organizations/:organization_id/firewall/access_rules/rules/:identifier

**Permission needed:** `#waf:edit`

Available in:

* enterprise


## Delete Access Rule

`DELETE` Remove an access rule so it is no longer evaluated during requests. This will apply to all zones owned by the organization

> DELETE organizations/:organization_id/firewall/access_rules/rules/:identifier

**Permission needed:** `#waf:edit`

Available in:

* enterprise

