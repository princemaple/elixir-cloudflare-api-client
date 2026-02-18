# Triggers

## Create trigger

**POST** `/accounts/{account_id}/builds/triggers`

Create a new CI/CD trigger


## Update trigger

**PATCH** `/accounts/{account_id}/builds/triggers/{trigger_uuid}`

Update an existing CI/CD trigger


## Delete trigger

**DELETE** `/accounts/{account_id}/builds/triggers/{trigger_uuid}`

Remove a CI/CD trigger


## Create manual build

**POST** `/accounts/{account_id}/builds/triggers/{trigger_uuid}/builds`

Trigger a manual build for a specific trigger


## Purge build cache

**POST** `/accounts/{account_id}/builds/triggers/{trigger_uuid}/purge_build_cache`

Clear the build cache for a specific trigger

