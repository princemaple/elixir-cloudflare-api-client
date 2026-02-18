# GitHub Integration

## Get repository configuration autofill

**GET** `/accounts/{account_id}/builds/repos/{provider_type}/{provider_account_id}/{repo_id}/config_autofill`

Analyze repository for automatic configuration detection

### Responses

#### 200 Configuration autofill data retrieved successfully

> Data is at `body["result"]`

```json
{
  "config_file": "*string*",
  "default_worker_name": "*string*",
  "env_worker_names": {},
  "package_manager": "*string*",
  "scripts": {}
}
```


