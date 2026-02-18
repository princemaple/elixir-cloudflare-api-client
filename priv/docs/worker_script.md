# Worker Script

## Upload Assets

**POST** `/accounts/{account_id}/workers/assets/upload`

Upload assets ahead of creating a Worker version.  To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.

### Responses

#### 201 Upload Assets response.

> Data is at `body["result"]`

```json
{
  "jwt": "*string*"
}
```

#### 202 Upload Assets response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Upload Assets response failure.

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



## List Workers

**GET** `/accounts/{account_id}/workers/scripts`

Fetch a list of uploaded workers.

### Responses

#### 200 List Workers response.

> Data is at `body["result"]`

```json
[
  {
    "compatibility_date": "*string*",
    "compatibility_flags": [
      null
    ],
    "created_on": "*string*",
    "etag": "*string*",
    "handlers": [
      "*string*"
    ],
    "has_assets": "*boolean*",
    "has_modules": "*boolean*",
    "id": "*string*",
    "last_deployed_from": "*string*",
    "logpush": "*boolean*",
    "migration_tag": "*string*",
    "modified_on": "*string*",
    "named_handlers": [
      {
        "handlers": [
          null
        ],
        "name": "*string*"
      }
    ],
    "observability": {
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "logs": {
        "destinations": null,
        "enabled": null,
        "head_sampling_rate": null,
        "invocation_logs": null,
        "persist": null
      }
    },
    "placement": {
      "last_analyzed_at": "*string*",
      "status": null
    },
    "placement_mode": "*string*",
    "placement_status": "*string*",
    "routes": [
      {
        "id": null,
        "pattern": null,
        "script": null
      }
    ],
    "tag": "*string*",
    "tags": [
      null
    ],
    "tail_consumers": [
      null
    ],
    "usage_model": "*string*"
  }
]
```

#### 4XX List Workers response failure.

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



## Search Workers

**GET** `/accounts/{account_id}/workers/scripts-search`

Search for Workers in an account.

### Responses

#### 200 Search Workers success.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "environment_is_default": "*boolean*",
    "environment_name": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "script_name": "*string*",
    "service_name": "*string*"
  }
]
```

#### 4XX Search Workers failure.

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



## Upload Worker Module

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}`

Upload a worker module. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.

### Responses

#### 200 Upload Worker Module response.

> Data is at `body["result"]`

```json
{
  "compatibility_date": "*string*",
  "compatibility_flags": [
    "*string*"
  ],
  "created_on": "*string*",
  "entry_point": "*string*",
  "etag": "*string*",
  "handlers": [
    "*string*"
  ],
  "has_assets": "*boolean*",
  "has_modules": "*boolean*",
  "id": "*string*",
  "last_deployed_from": "*string*",
  "logpush": "*boolean*",
  "migration_tag": "*string*",
  "modified_on": "*string*",
  "named_handlers": [
    {
      "handlers": [
        "*string*"
      ],
      "name": "*string*"
    }
  ],
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "destinations": [
        "*string*"
      ],
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*",
      "persist": "*boolean*"
    }
  },
  "placement": {
    "last_analyzed_at": "*string*",
    "status": "*string*"
  },
  "placement_mode": "*string*",
  "placement_status": "*string*",
  "startup_time_ms": "*integer*",
  "tag": "*string*",
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "environment": "*string*",
      "namespace": "*string*",
      "service": "*string*"
    }
  ],
  "usage_model": "*string*"
}
```

#### 4XX Upload Worker Module response failure.

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



## Download Worker

**GET** `/accounts/{account_id}/workers/scripts/{script_name}`

Fetch raw script content for your worker. Note this is the original script content, not JSON encoded.

### Responses

#### 200 Worker successfully downloaded. Returns script content as a multipart form, with no metadata part and no JSON encoding applied.

> Data is at `body["result"]`

```json

```

#### 4XX Download Worker response failure.

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



## Delete Worker

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}`

Delete your worker. This call has no response body on a successful delete.

### Responses

#### 200 Delete Worker response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete Worker response failure.

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



## Create Assets Upload Session

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/assets-upload-session`

Start uploading a collection of assets for use in a Worker version. To learn more about the direct uploads of assets, see https://developers.cloudflare.com/workers/static-assets/direct-upload/.

### Responses

#### 200 Create Assets Upload Session response.

> Data is at `body["result"]`

```json
{
  "buckets": [
    [
      "*string*"
    ]
  ],
  "jwt": "*string*"
}
```

#### 4XX Create Assets Upload Session response failure.

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



## Put script content

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/content`

Put script content without touching config or metadata.

### Responses

#### 200 Put script content.

> Data is at `body["result"]`

```json
null
```

#### 4XX Put script content failure.

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



## Get script content

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/content/v2`

Fetch script content only.

### Responses

#### 200 Fetch script content.

> Data is at `body["result"]`

```json

```

#### 4XX Fetch script content failure.

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



## Patch Script Settings

**PATCH** `/accounts/{account_id}/workers/scripts/{script_name}/script-settings`

Patch script-level settings when using [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions). Including but not limited to Logpush and Tail Consumers.

### Responses

#### 200 Patch script settings.

> Data is at `body["result"]`

```json
{
  "logpush": "*boolean*",
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "destinations": [
        "*string*"
      ],
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*",
      "persist": "*boolean*"
    }
  },
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "environment": "*string*",
      "namespace": "*string*",
      "service": "*string*"
    }
  ]
}
```

#### 4XX Patch script settings failure.

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



## Get Script Settings

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/script-settings`

Get script-level settings when using [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions). Includes Logpush and Tail Consumers.

### Responses

#### 200 Fetch script settings.

> Data is at `body["result"]`

```json
{
  "logpush": "*boolean*",
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "destinations": [
        "*string*"
      ],
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*",
      "persist": "*boolean*"
    }
  },
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "environment": "*string*",
      "namespace": "*string*",
      "service": "*string*"
    }
  ]
}
```

#### 4XX Fetch script settings failure.

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



## Add script secret

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/secrets`

Add a secret to a script.

### Responses

#### 200 Put script secret binding success.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Put script secret binding failure.

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



## List script secrets

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/secrets`

List secrets bound to a script.

### Responses

#### 200 List script secrets.

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX List script secrets failure.

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



## Get secret binding

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/secrets/{secret_name}`

Get a given secret binding (value omitted) on a script.

### Responses

#### 200 Get script secret binding.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get script secret failure.

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



## Delete script secret

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/secrets/{secret_name}`

Remove a secret from a script.

### Responses

#### 200 Delete script secret binding.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete script secret failure.

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



## Patch Settings

**PATCH** `/accounts/{account_id}/workers/scripts/{script_name}/settings`

Patch metadata or config, such as bindings or usage model.

### Responses

#### 200 Patch settings.

> Data is at `body["result"]`

```json
{
  "bindings": [
    {}
  ],
  "compatibility_date": "*string*",
  "compatibility_flags": [
    "*string*"
  ],
  "limits": {
    "cpu_ms": "*integer*"
  },
  "logpush": "*boolean*",
  "migrations": null,
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "destinations": [
        "*string*"
      ],
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*",
      "persist": "*boolean*"
    }
  },
  "placement": {},
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "environment": "*string*",
      "namespace": "*string*",
      "service": "*string*"
    }
  ],
  "usage_model": "*string*"
}
```

#### 4XX Patch settings failure.

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



## Get Settings

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/settings`

Get metadata and config, such as bindings or usage model.

### Responses

#### 200 Fetch settings.

> Data is at `body["result"]`

```json
{
  "bindings": [
    {}
  ],
  "compatibility_date": "*string*",
  "compatibility_flags": [
    "*string*"
  ],
  "limits": {
    "cpu_ms": "*integer*"
  },
  "logpush": "*boolean*",
  "migrations": null,
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "destinations": [
        "*string*"
      ],
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*",
      "persist": "*boolean*"
    }
  },
  "placement": {},
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "environment": "*string*",
      "namespace": "*string*",
      "service": "*string*"
    }
  ],
  "usage_model": "*string*"
}
```

#### 4XX Fetch settings failure.

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



## Post Worker subdomain

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/subdomain`

Enable or disable the Worker on the workers.dev subdomain.

### Responses

#### 200 Post subdomain response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*",
  "previews_enabled": "*boolean*"
}
```

#### 4XX Post subdomain response failure.

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



## Get Worker subdomain

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/subdomain`

Get if the Worker is available on the workers.dev subdomain.

### Responses

#### 200 Get subdomain response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*",
  "previews_enabled": "*boolean*"
}
```

#### 4XX Get subdomain response failure.

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



## Delete Worker subdomain

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/subdomain`

Disable all workers.dev subdomains for a Worker.

### Responses

#### 200 Delete subdomain response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*",
  "previews_enabled": "*boolean*"
}
```

#### 4XX Delete subdomain response failure.

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



## Update Usage Model

**PUT** `/accounts/{account_id}/workers/scripts/{script_name}/usage-model`

Updates the Usage Model for a given Worker. Requires a Workers Paid subscription.

### Responses

#### 200 Update Usage Model response.

> Data is at `body["result"]`

```json
{
  "usage_model": "*string*",
  "user_limits": {
    "cpu_ms": "*integer*"
  }
}
```

#### 4XX Update Usage Model response failure.

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



## Fetch Usage Model

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/usage-model`

Fetches the Usage Model for a given Worker.

### Responses

#### 200 Fetch Usage Model response.

> Data is at `body["result"]`

```json
{
  "usage_model": "*string*",
  "user_limits": {
    "cpu_ms": "*integer*"
  }
}
```

#### 4XX Fetch Usage Model response failure.

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


