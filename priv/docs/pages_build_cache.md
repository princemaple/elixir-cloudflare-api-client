# Pages Build Cache

## Purge build cache

**POST** `/accounts/{account_id}/pages/projects/{project_name}/purge_build_cache`

Purge all cached build artifacts for a Pages project

### Responses

#### 200 Purge build cache response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Purge build cache failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


