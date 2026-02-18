# Workers for Platforms

## Create dispatch namespace

**POST** `/accounts/{account_id}/workers/dispatch/namespaces`

Create a new Workers for Platforms namespace.

### Responses

#### 200 Fetch a list of Workers for Platforms namespaces.

> Data is at `body["result"]`

```json
{
  "created_by": "*string*",
  "created_on": "*string*",
  "modified_by": "*string*",
  "modified_on": "*string*",
  "namespace_id": "*string*",
  "namespace_name": "*string*",
  "script_count": "*integer*",
  "trusted_workers": "*boolean*"
}
```

#### 4XX Failure to get list of Workers for Platforms namespaces.

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



## List dispatch namespaces

**GET** `/accounts/{account_id}/workers/dispatch/namespaces`

Fetch a list of Workers for Platforms namespaces.

### Responses

#### 200 Fetch a list of Workers for Platforms namespaces.

> Data is at `body["result"]`

```json
[
  {
    "created_by": "*string*",
    "created_on": "*string*",
    "modified_by": "*string*",
    "modified_on": "*string*",
    "namespace_id": "*string*",
    "namespace_name": "*string*",
    "script_count": "*integer*",
    "trusted_workers": "*boolean*"
  }
]
```

#### 4XX Failure to get list of Workers for Platforms namespaces.

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



## Update dispatch namespace

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Update a Workers for Platforms namespace.

### Responses

#### 200 Update a Workers for Platforms namespace.

> Data is at `body["result"]`

```json
{
  "created_by": "*string*",
  "created_on": "*string*",
  "modified_by": "*string*",
  "modified_on": "*string*",
  "namespace_id": "*string*",
  "namespace_name": "*string*",
  "script_count": "*integer*",
  "trusted_workers": "*boolean*"
}
```

#### 4XX Failure to update Workers for Platforms namespace.

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



## Patch dispatch namespace

**PATCH** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Patch a Workers for Platforms namespace. Omitted fields are left unchanged.

### Responses

#### 200 Patch a Workers for Platforms namespace.

> Data is at `body["result"]`

```json
{
  "created_by": "*string*",
  "created_on": "*string*",
  "modified_by": "*string*",
  "modified_on": "*string*",
  "namespace_id": "*string*",
  "namespace_name": "*string*",
  "script_count": "*integer*",
  "trusted_workers": "*boolean*"
}
```

#### 4XX Failure to patch Workers for Platforms namespace.

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



## Get dispatch namespace

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Get a Workers for Platforms namespace.

### Responses

#### 200 Get a Workers for Platforms namespace.

> Data is at `body["result"]`

```json
{
  "created_by": "*string*",
  "created_on": "*string*",
  "modified_by": "*string*",
  "modified_on": "*string*",
  "namespace_id": "*string*",
  "namespace_name": "*string*",
  "script_count": "*integer*",
  "trusted_workers": "*boolean*"
}
```

#### 4XX Failure to get Workers for Platforms namespace.

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



## Delete dispatch namespace

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}`

Delete a Workers for Platforms namespace.

### Responses

#### 200 Delete a Workers for Platforms namespace.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Failure to delete Workers for Platforms namespace.

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



## List Scripts in Namespace

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`

Fetch a list of scripts uploaded to a Workers for Platforms namespace.

### Responses

#### 200 List scripts in namespace response.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "dispatch_namespace": "*string*",
    "modified_on": "*string*",
    "script": null
  }
]
```

#### 4XX List scripts in namespace response failure.

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



## Delete Scripts in Namespace

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts`

Delete multiple scripts from a Workers for Platforms namespace based on optional tag filters.

### Responses

#### 200 Delete scripts in namespace response.

> Data is at `body["result"]`

```json
{
  "deleted": [
    {
      "id": "*string*"
    }
  ],
  "deleted_count": "*integer*",
  "has_more": "*boolean*"
}
```

#### 4XX Delete scripts in namespace response failure.

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

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`

Upload a worker module to a Workers for Platforms namespace. You can find more about the multipart metadata on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Worker Details

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`

Fetch information about a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Worker Details Response (Workers for Platforms).

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "dispatch_namespace": "*string*",
  "modified_on": "*string*",
  "script": null
}
```

#### 4XX Worker Details Failure (Workers for Platforms).

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

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}`

Delete a worker from a Workers for Platforms namespace. This call has no response body on a successful delete.

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

**POST** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/assets-upload-session`

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



## Get Script Bindings

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/bindings`

Fetch script bindings from a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Fetch script bindings (Workers for Platforms).

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Fetch script bindings failure (Workers for Platforms).

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



## Put Script Content

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`

Put script content for a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Put script content (Workers for Platforms).

> Data is at `body["result"]`

```json
null
```

#### 4XX Put script content failure (Workers for Platforms).

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



## Get Script Content

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/content`

Fetch script content from a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Get script content.

> Data is at `body["result"]`

```json

```

#### 4XX Get script content failure.

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

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`

Add a secret to a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Fetch script bindings (Workers for Platforms).

> Data is at `body["result"]`

```json
{}
```

#### 4XX Fetch script bindings failure (Workers for Platforms).

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



## List Script Secrets

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets`

List secrets bound to a script uploaded to a Workers for Platforms namespace.

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

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`

Get a given secret binding (value omitted) on a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Get script secret (Workers for Platforms).

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get script secret failure (Workers for Platforms).

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

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/secrets/{secret_name}`

Remove a secret from a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Delete script secret binding (Workers for Platforms).

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete script secret failure (Workers for Platforms).

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

**PATCH** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`

Patch script metadata, such as bindings.

### Responses

#### 200 Patch script settings.

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

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/settings`

Get script settings from a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Fetch script settings.

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



## Put Script Tags

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`

Put script tags for a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Fetch script tags.

> Data is at `body["result"]`

```json
[
  "*string*"
]
```

#### 4XX Fetch script tags failure.

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



## Get Script Tags

**GET** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags`

Fetch tags from a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Fetch script tags.

> Data is at `body["result"]`

```json
[
  "*string*"
]
```

#### 4XX Fetch script tags failure.

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



## Put Script Tag

**PUT** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`

Put a single tag on a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Put script tag.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Put script tag failure.

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



## Delete Script Tag

**DELETE** `/accounts/{account_id}/workers/dispatch/namespaces/{dispatch_namespace}/scripts/{script_name}/tags/{tag}`

Delete script tag for a script uploaded to a Workers for Platforms namespace.

### Responses

#### 200 Delete script tag.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete script tag failure.

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


