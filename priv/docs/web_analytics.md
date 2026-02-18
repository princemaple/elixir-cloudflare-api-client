# Web Analytics

## Create a Web Analytics site

**POST** `/accounts/{account_id}/rum/site_info`

Creates a new Web Analytics site.


## List Web Analytics sites

**GET** `/accounts/{account_id}/rum/site_info/list`

Lists all Web Analytics sites of an account.


## Update a Web Analytics site

**PUT** `/accounts/{account_id}/rum/site_info/{site_id}`

Updates an existing Web Analytics site.


## Get a Web Analytics site

**GET** `/accounts/{account_id}/rum/site_info/{site_id}`

Retrieves a Web Analytics site.


## Delete a Web Analytics site

**DELETE** `/accounts/{account_id}/rum/site_info/{site_id}`

Deletes an existing Web Analytics site.


## Create a Web Analytics rule

**POST** `/accounts/{account_id}/rum/v2/{ruleset_id}/rule`

Creates a new rule in a Web Analytics ruleset.


## Update a Web Analytics rule

**PUT** `/accounts/{account_id}/rum/v2/{ruleset_id}/rule/{rule_id}`

Updates a rule in a Web Analytics ruleset.


## Delete a Web Analytics rule

**DELETE** `/accounts/{account_id}/rum/v2/{ruleset_id}/rule/{rule_id}`

Deletes an existing rule from a Web Analytics ruleset.


## Update Web Analytics rules

**POST** `/accounts/{account_id}/rum/v2/{ruleset_id}/rules`

Modifies one or more rules in a Web Analytics ruleset with a single request.


## List rules in Web Analytics ruleset

**GET** `/accounts/{account_id}/rum/v2/{ruleset_id}/rules`

Lists all the rules in a Web Analytics ruleset.


## Toggle RUM on/off for a zone

**PATCH** `/zones/{zone_id}/settings/rum`

Toggles RUM on/off for an existing zone.


## Get RUM status for a zone

**GET** `/zones/{zone_id}/settings/rum`

Retrieves RUM status for a zone.

