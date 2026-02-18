# IP Access rules for a user

## Create an IP Access rule

**POST** `/user/firewall/access_rules/rules`

Creates a new IP Access rule for all zones owned by the current user.

Note: To create an IP Access rule that applies to a specific zone, refer to the [IP Access rules for a zone](#ip-access-rules-for-a-zone) endpoints.


## List IP Access rules

**GET** `/user/firewall/access_rules/rules`

Fetches IP Access rules of the user. You can filter the results using several optional parameters.


## Update an IP Access rule

**PATCH** `/user/firewall/access_rules/rules/{rule_id}`

Updates an IP Access rule defined at the user level. You can only update the rule action (`mode` parameter) and notes.


## Delete an IP Access rule

**DELETE** `/user/firewall/access_rules/rules/{rule_id}`

Deletes an IP Access rule at the user level.

Note: Deleting a user-level rule will affect all zones owned by the user.

