# Magic Network Monitoring Rules

## Update rules

**PUT** `/accounts/{account_id}/mnm/rules`

Update network monitoring rules for account.


## Create rules

**POST** `/accounts/{account_id}/mnm/rules`

Create network monitoring rules for account. Currently only supports creating a single rule per API request.


## List rules

**GET** `/accounts/{account_id}/mnm/rules`

Lists network monitoring rules for account.


## Update rule

**PATCH** `/accounts/{account_id}/mnm/rules/{rule_id}`

Update a network monitoring rule for account.


## Get rule

**GET** `/accounts/{account_id}/mnm/rules/{rule_id}`

List a single network monitoring rule for account.


## Delete rule

**DELETE** `/accounts/{account_id}/mnm/rules/{rule_id}`

Delete a network monitoring rule for account.


## Update advertisement for rule

**PATCH** `/accounts/{account_id}/mnm/rules/{rule_id}/advertisement`

Update advertisement for rule.

