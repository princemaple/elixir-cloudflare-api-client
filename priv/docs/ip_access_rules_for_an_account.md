# IP Access rules for an account

## Create an IP Access rule

**POST** `/accounts/{account_id}/firewall/access_rules/rules`

Creates a new IP Access rule for an account. The rule will apply to all zones in the account.

Note: To create an IP Access rule that applies to a single zone, refer to the [IP Access rules for a zone](#ip-access-rules-for-a-zone) endpoints.


## List IP Access rules

**GET** `/accounts/{account_id}/firewall/access_rules/rules`

Fetches IP Access rules of an account. These rules apply to all the zones in the account. You can filter the results using several optional parameters.


## Update an IP Access rule

**PATCH** `/accounts/{account_id}/firewall/access_rules/rules/{rule_id}`

Updates an IP Access rule defined at the account level.

Note: This operation will affect all zones in the account.


## Get an IP Access rule

**GET** `/accounts/{account_id}/firewall/access_rules/rules/{rule_id}`

Fetches the details of an IP Access rule defined at the account level.


## Delete an IP Access rule

**DELETE** `/accounts/{account_id}/firewall/access_rules/rules/{rule_id}`

Deletes an existing IP Access rule defined at the account level.

Note: This operation will affect all zones in the account.

