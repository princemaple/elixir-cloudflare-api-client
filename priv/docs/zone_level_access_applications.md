# Zone-Level Access applications

## Add an Access application

**POST** `/zones/{zone_id}/access/apps`

Adds a new application to Access.


## List Access Applications

**GET** `/zones/{zone_id}/access/apps`

List all Access Applications in a zone.


## Update an Access application

**PUT** `/zones/{zone_id}/access/apps/{app_id}`

Updates an Access application.


## Get an Access application

**GET** `/zones/{zone_id}/access/apps/{app_id}`

Fetches information about an Access application.


## Delete an Access application

**DELETE** `/zones/{zone_id}/access/apps/{app_id}`

Deletes an application from Access.


## Revoke application tokens

**POST** `/zones/{zone_id}/access/apps/{app_id}/revoke_tokens`

Revokes all tokens issued for an application.


## Update application settings

**PUT** `/zones/{zone_id}/access/apps/{app_id}/settings`

Updates application settings.


## Update application settings

**PATCH** `/zones/{zone_id}/access/apps/{app_id}/settings`

Updates application settings.


## Test Access policies

**GET** `/zones/{zone_id}/access/apps/{app_id}/user_policy_checks`

Tests if a specific user has permission to access an application.

