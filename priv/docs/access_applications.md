# Access applications

## Add an Access application

**POST** `/accounts/{account_id}/access/apps`

Adds a new application to Access.


## List Access applications

**GET** `/accounts/{account_id}/access/apps`

Lists all Access applications in an account.


## Update an Access application

**PUT** `/accounts/{account_id}/access/apps/{app_id}`

Updates an Access application.


## Get an Access application

**GET** `/accounts/{account_id}/access/apps/{app_id}`

Fetches information about an Access application.


## Delete an Access application

**DELETE** `/accounts/{account_id}/access/apps/{app_id}`

Deletes an application from Access.


## Revoke application tokens

**POST** `/accounts/{account_id}/access/apps/{app_id}/revoke_tokens`

Revokes all tokens issued for an application.


## Update Access application settings

**PUT** `/accounts/{account_id}/access/apps/{app_id}/settings`

Updates Access application settings.


## Update Access application settings

**PATCH** `/accounts/{account_id}/access/apps/{app_id}/settings`

Updates Access application settings.


## Test Access policies

**GET** `/accounts/{account_id}/access/apps/{app_id}/user_policy_checks`

Tests if a specific user has permission to access an application.

