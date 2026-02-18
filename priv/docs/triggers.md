# Triggers

## Create trigger

**POST** `/accounts/{account_id}/builds/triggers`

Create a new CI/CD trigger

### Responses

#### 200 Trigger created successfully

> Data is at `body["result"]`

```json
{
  "branch_excludes": [
    "*string*"
  ],
  "branch_includes": [
    "*string*"
  ],
  "build_caching_enabled": "*boolean*",
  "build_command": "*string*",
  "build_token_name": "*string*",
  "build_token_uuid": "*string*",
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
```



## Update trigger

**PATCH** `/accounts/{account_id}/builds/triggers/{trigger_uuid}`

Update an existing CI/CD trigger

### Responses

#### 200 Trigger updated successfully

> Data is at `body["result"]`

```json
{
  "branch_excludes": [
    "*string*"
  ],
  "branch_includes": [
    "*string*"
  ],
  "build_caching_enabled": "*boolean*",
  "build_command": "*string*",
  "build_token_name": "*string*",
  "build_token_uuid": "*string*",
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
```

#### 404 

```json

```



## Delete trigger

**DELETE** `/accounts/{account_id}/builds/triggers/{trigger_uuid}`

Remove a CI/CD trigger

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 404 

```json

```



## Create manual build

**POST** `/accounts/{account_id}/builds/triggers/{trigger_uuid}/builds`

Trigger a manual build for a specific trigger

### Responses

#### 200 Build created successfully

> Data is at `body["result"]`

```json
{
  "build_uuid": "*string*",
  "created_on": "*string*"
}
```



## Purge build cache

**POST** `/accounts/{account_id}/builds/triggers/{trigger_uuid}/purge_build_cache`

Clear the build cache for a specific trigger

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 404 

```json

```


