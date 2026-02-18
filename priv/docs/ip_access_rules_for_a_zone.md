# IP Access rules for a zone

## Create an IP Access rule

**POST** `/zones/{zone_id}/firewall/access_rules/rules`

Creates a new IP Access rule for a zone.

Note: To create an IP Access rule that applies to multiple zones, refer to [IP Access rules for a user](#ip-access-rules-for-a-user) or [IP Access rules for an account](#ip-access-rules-for-an-account) as appropriate.


## List IP Access rules

**GET** `/zones/{zone_id}/firewall/access_rules/rules`

Fetches IP Access rules of a zone. You can filter the results using several optional parameters.


## Update an IP Access rule

**PATCH** `/zones/{zone_id}/firewall/access_rules/rules/{rule_id}`

Updates an IP Access rule defined at the zone level. You can only update the rule action (`mode` parameter) and notes.


## Delete an IP Access rule

**DELETE** `/zones/{zone_id}/firewall/access_rules/rules/{rule_id}`

Deletes an IP Access rule defined at the zone level.

Optionally, you can use the `cascade` property to specify that you wish to delete similar rules in other zones managed by the same zone owner.

