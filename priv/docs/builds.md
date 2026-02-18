# Builds

## Get builds by version IDs

**GET** `/accounts/{account_id}/builds/builds`

Retrieve builds for specific version IDs

### Responses

#### 200 Builds retrieved successfully

> Data is at `body["result"]`

```json
{
  "builds": {}
}
```



## Get latest builds by script IDs

**GET** `/accounts/{account_id}/builds/builds/latest`

Retrieve the most recent builds for multiple worker scripts

### Responses

#### 200 Latest builds retrieved successfully

> Data is at `body["result"]`

```json
{
  "builds": {}
}
```



## Get build by UUID

**GET** `/accounts/{account_id}/builds/builds/{build_uuid}`

Retrieve detailed information about a specific build

### Responses

#### 200 Build retrieved successfully

> Data is at `body["result"]`

```json
{
  "build_outcome": "*string*",
  "build_trigger_metadata": {
    "author": "*string*",
    "branch": "*string*",
    "build_command": "*string*",
    "build_token_name": "*string*",
    "build_token_uuid": "*string*",
    "build_trigger_source": "*string*",
    "commit_hash": "*string*",
    "commit_message": "*string*",
    "deploy_command": "*string*",
    "environment_variables": {},
    "provider_account_name": "*string*",
    "provider_type": "*string*",
    "repo_name": "*string*",
    "root_directory": "*string*"
  },
  "build_uuid": "*string*",
  "created_on": "*string*",
  "initializing_on": "*string*",
  "modified_on": "*string*",
  "pull_request": {
    "created_on": "*string*",
    "pull_request_url": "*string*"
  },
  "running_on": "*string*",
  "status": "*string*",
  "stopped_on": "*string*",
  "trigger": {
    "branch_excludes": [
      "*string*"
    ],
    "branch_includes": [
      "*string*"
    ],
    "build_caching_enabled": "*boolean*",
    "build_command": "*string*",
    "created_on": "*string*",
    "deleted_on": "*string*",
    "deploy_command": "*string*",
    "external_script_id": "*string*",
    "modified_on": "*string*",
    "path_excludes": [
      "*string*"
    ],
    "path_includes": [
      "*string*"
    ],
    "repo_connection": {
      "created_on": "*string*",
      "deleted_on": "*string*",
      "modified_on": "*string*",
      "provider_account_id": "*string*",
      "provider_account_name": "*string*",
      "provider_type": "*string*",
      "repo_connection_uuid": "*string*",
      "repo_id": "*string*",
      "repo_name": "*string*"
    },
    "root_directory": "*string*",
    "trigger_name": "*string*",
    "trigger_uuid": "*string*"
  }
}
```

#### 404 

```json

```



## Cancel build

**PUT** `/accounts/{account_id}/builds/builds/{build_uuid}/cancel`

Cancel a running or queued build

### Responses

#### 200 Build canceled successfully

> Data is at `body["result"]`

```json
{
  "build_outcome": "*string*",
  "build_uuid": "*string*",
  "stopped_on": "*string*"
}
```

#### 404 

```json

```



## Get build logs

**GET** `/accounts/{account_id}/builds/builds/{build_uuid}/logs`

Retrieve logs for a specific build with cursor-based pagination

### Responses

#### 200 Build logs retrieved successfully

> Data is at `body["result"]`

```json
{
  "cursor": "*string*",
  "lines": [
    [
      null
    ]
  ],
  "truncated": "*boolean*"
}
```

#### 404 

```json

```


