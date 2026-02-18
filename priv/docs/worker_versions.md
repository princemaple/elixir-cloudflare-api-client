# Worker Versions

## Upload Version

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/versions`

Upload a Worker Version without deploying to Cloudflare's network. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.

### Responses

#### 200 Upload Version response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "metadata": {
    "author_email": "*string*",
    "author_id": "*string*",
    "created_on": "*string*",
    "hasPreview": "*boolean*",
    "modified_on": "*string*",
    "source": "*string*"
  },
  "number": "*number*",
  "resources": {
    "bindings": [
      {}
    ],
    "script": {
      "etag": "*string*",
      "handlers": [
        "*string*"
      ],
      "last_deployed_from": "*string*",
      "named_handlers": [
        {
          "handlers": [
            null
          ],
          "name": "*string*"
        }
      ]
    },
    "script_runtime": {
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "limits": {
        "cpu_ms": "*integer*"
      },
      "migration_tag": "*string*",
      "usage_model": "*string*"
    }
  },
  "startup_time_ms": "*integer*"
}
```

#### 4XX Upload Version response failure.

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



## List Versions

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/versions`

List of Worker Versions. The first version in the list is the latest version.

### Responses

#### 200 List Versions response.

> Data is at `body["result"]`

```json
{
  "items": [
    {
      "id": "*string*",
      "metadata": {
        "author_email": "*string*",
        "author_id": "*string*",
        "created_on": "*string*",
        "hasPreview": "*boolean*",
        "modified_on": "*string*",
        "source": "*string*"
      },
      "number": "*number*"
    }
  ]
}
```

#### 4XX List Versions response failure.

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



## Get Version Detail

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/versions/{version_id}`



### Responses

#### 200 Get Version Detail response.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "metadata": {
    "author_email": "*string*",
    "author_id": "*string*",
    "created_on": "*string*",
    "hasPreview": "*boolean*",
    "modified_on": "*string*",
    "source": "*string*"
  },
  "number": "*number*",
  "resources": {
    "bindings": [
      {}
    ],
    "script": {
      "etag": "*string*",
      "handlers": [
        "*string*"
      ],
      "last_deployed_from": "*string*",
      "named_handlers": [
        {
          "handlers": [
            null
          ],
          "name": "*string*"
        }
      ]
    },
    "script_runtime": {
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "limits": {
        "cpu_ms": "*integer*"
      },
      "migration_tag": "*string*",
      "usage_model": "*string*"
    }
  }
}
```

#### 4XX Get Version Detail response failure.

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


