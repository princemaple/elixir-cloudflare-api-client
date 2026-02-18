# Builds

## Get builds by version IDs

**GET** `/accounts/{account_id}/builds/builds`

Retrieve builds for specific version IDs


## Get latest builds by script IDs

**GET** `/accounts/{account_id}/builds/builds/latest`

Retrieve the most recent builds for multiple worker scripts


## Get build by UUID

**GET** `/accounts/{account_id}/builds/builds/{build_uuid}`

Retrieve detailed information about a specific build


## Cancel build

**PUT** `/accounts/{account_id}/builds/builds/{build_uuid}/cancel`

Cancel a running or queued build


## Get build logs

**GET** `/accounts/{account_id}/builds/builds/{build_uuid}/logs`

Retrieve logs for a specific build with cursor-based pagination

