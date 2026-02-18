# Email Routing routing rules

## Create routing rule

**POST** `/zones/{zone_id}/email/routing/rules`

Rules consist of a set of criteria for matching emails (such as an email being sent to a specific custom email address) plus a set of actions to take on the email (like forwarding it to a specific destination address).


## List routing rules

**GET** `/zones/{zone_id}/email/routing/rules`

Lists existing routing rules.


## Update catch-all rule

**PUT** `/zones/{zone_id}/email/routing/rules/catch_all`

Enable or disable catch-all routing rule, or change action to forward to specific destination address.


## Get catch-all rule

**GET** `/zones/{zone_id}/email/routing/rules/catch_all`

Get information on the default catch-all routing rule.


## Update routing rule

**PUT** `/zones/{zone_id}/email/routing/rules/{rule_identifier}`

Update actions and matches, or enable/disable specific routing rules.


## Get routing rule

**GET** `/zones/{zone_id}/email/routing/rules/{rule_identifier}`

Get information for a specific routing rule already created.


## Delete routing rule

**DELETE** `/zones/{zone_id}/email/routing/rules/{rule_identifier}`

Delete a specific routing rule.

