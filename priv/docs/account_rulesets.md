# Account Rulesets

## Create an account ruleset

**POST** `/accounts/{account_id}/rulesets`

Creates a ruleset at the account level.


## List account rulesets

**GET** `/accounts/{account_id}/rulesets`

Fetches all rulesets at the account level.


## Update an account entry point ruleset

**PUT** `/accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint`

Updates an account entry point ruleset, creating a new version.


## Get an account entry point ruleset

**GET** `/accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint`

Fetches the latest version of the account entry point ruleset for a given phase.


## List an account entry point ruleset's versions

**GET** `/accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions`

Fetches the versions of an account entry point ruleset.


## Get an account entry point ruleset version

**GET** `/accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions/{ruleset_version}`

Fetches a specific version of an account entry point ruleset.


## Update an account ruleset

**PUT** `/accounts/{account_id}/rulesets/{ruleset_id}`

Updates an account ruleset, creating a new version.


## Get an account ruleset

**GET** `/accounts/{account_id}/rulesets/{ruleset_id}`

Fetches the latest version of an account ruleset.


## Delete an account ruleset

**DELETE** `/accounts/{account_id}/rulesets/{ruleset_id}`

Deletes all versions of an existing account ruleset.


## Create an account ruleset rule

**POST** `/accounts/{account_id}/rulesets/{ruleset_id}/rules`

Adds a new rule to an account ruleset. The rule will be added to the end of the existing list of rules in the ruleset by default.


## Update an account ruleset rule

**PATCH** `/accounts/{account_id}/rulesets/{ruleset_id}/rules/{rule_id}`

Updates an existing rule in an account ruleset.


## Delete an account ruleset rule

**DELETE** `/accounts/{account_id}/rulesets/{ruleset_id}/rules/{rule_id}`

Deletes an existing rule from an account ruleset.


## List an account ruleset's versions

**GET** `/accounts/{account_id}/rulesets/{ruleset_id}/versions`

Fetches the versions of an account ruleset.


## Get an account ruleset version

**GET** `/accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`

Fetches a specific version of an account ruleset.


## Delete an account ruleset version

**DELETE** `/accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`

Deletes an existing version of an account ruleset.


## List an account ruleset version's rules by tag

**GET** `/accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}/by_tag/{rule_tag}`

Fetches the rules of a managed account ruleset version for a given tag.

