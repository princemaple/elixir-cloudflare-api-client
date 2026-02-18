# Worker Environment

## Put script content

**PUT** `/accounts/{account_id}/workers/services/{service_name}/environments/{environment_name}/content`

Put script content from a worker with an environment.

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

**GET** `/accounts/{account_id}/workers/services/{service_name}/environments/{environment_name}/content`

Get script content from a worker with an environment.

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



## Patch Script Settings

**PATCH** `/accounts/{account_id}/workers/services/{service_name}/environments/{environment_name}/settings`

Patch script metadata, such as bindings.

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

**GET** `/accounts/{account_id}/workers/services/{service_name}/environments/{environment_name}/settings`

Get script settings from a worker with an environment.

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


