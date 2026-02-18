# Zero Trust Gateway rules

## Create a Zero Trust Gateway rule

**POST** `/accounts/{account_id}/gateway/rules`

Create a new Zero Trust Gateway rule.


## List Zero Trust Gateway rules

**GET** `/accounts/{account_id}/gateway/rules`

List Zero Trust Gateway rules for an account.


## List Zero Trust Gateway rules inherited from the parent account

**GET** `/accounts/{account_id}/gateway/rules/tenant`

List Zero Trust Gateway rules for the parent account of an account in the MSP configuration.


## Update a Zero Trust Gateway rule

**PUT** `/accounts/{account_id}/gateway/rules/{rule_id}`

Update a configured Zero Trust Gateway rule.


## Get Zero Trust Gateway rule details.

**GET** `/accounts/{account_id}/gateway/rules/{rule_id}`

Get a single Zero Trust Gateway rule.


## Delete a Zero Trust Gateway rule

**DELETE** `/accounts/{account_id}/gateway/rules/{rule_id}`

Delete a Zero Trust Gateway rule.


## Reset the expiration of a Zero Trust Gateway Rule

**POST** `/accounts/{account_id}/gateway/rules/{rule_id}/reset_expiration`

Resets the expiration of a Zero Trust Gateway Rule if its duration elapsed and it has a default duration. The Zero Trust Gateway Rule must have values  for both `expiration.expires_at` and `expiration.duration`.

