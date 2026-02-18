# Repository Connections

## Create or update repository connection

**PUT** `/accounts/{account_id}/builds/repos/connections`

Upsert a repository connection for CI/CD integration

### Responses

#### 200 Repository connection upserted successfully

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "deleted_on": "*string*",
  "modified_on": "*string*",
  "provider_account_id": "*string*",
  "provider_account_name": "*string*",
  "provider_type": "*string*",
  "repo_connection_uuid": "*string*",
  "repo_id": "*string*",
  "repo_name": "*string*"
}
```



## Delete repository connection

**DELETE** `/accounts/{account_id}/builds/repos/connections/{repo_connection_uuid}`

Remove a repository connection

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 404 

```json

```


