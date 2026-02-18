# Versions

## Create Version

**POST** `/accounts/{account_id}/workers/workers/{worker_id}/versions`

Create a new version.

### Responses

#### 200 Create version success.

> Data is at `body["result"]`

```json
{
  "annotations": {
    "workers/message": "*string*",
    "workers/tag": "*string*",
    "workers/triggered_by": "*string*"
  },
  "assets": {
    "config": {
      "html_handling": "*string*",
      "not_found_handling": "*string*",
      "run_worker_first": null
    },
    "jwt": "*string*"
  },
  "bindings": [
    {}
  ],
  "compatibility_date": "*string*",
  "compatibility_flags": [
    "*string*"
  ],
  "created_on": "*string*",
  "id": "*string*",
  "limits": {
    "cpu_ms": "*integer*"
  },
  "main_module": "*string*",
  "migrations": null,
  "modules": [
    {
      "content_base64": "*string*",
      "content_type": "*string*",
      "name": "*string*"
    }
  ],
  "number": "*integer*",
  "placement": {},
  "source": "*string*",
  "startup_time_ms": "*integer*",
  "usage_model": "*string*"
}
```

#### 4XX Create version failure.

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

**GET** `/accounts/{account_id}/workers/workers/{worker_id}/versions`

List all versions for a Worker.

### Responses

#### 200 List versions success.

> Data is at `body["result"]`

```json
[
  {
    "annotations": {
      "workers/message": "*string*",
      "workers/tag": "*string*",
      "workers/triggered_by": "*string*"
    },
    "assets": {
      "config": {
        "html_handling": "*string*",
        "not_found_handling": "*string*",
        "run_worker_first": null
      },
      "jwt": "*string*"
    },
    "bindings": [
      null
    ],
    "compatibility_date": "*string*",
    "compatibility_flags": [
      null
    ],
    "created_on": "*string*",
    "id": "*string*",
    "limits": {
      "cpu_ms": "*integer*"
    },
    "main_module": "*string*",
    "migrations": null,
    "modules": [
      {
        "content_base64": "*string*",
        "content_type": "*string*",
        "name": "*string*"
      }
    ],
    "number": "*integer*",
    "placement": {},
    "source": "*string*",
    "startup_time_ms": "*integer*",
    "usage_model": "*string*"
  }
]
```

#### 4XX List versions failure.

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



## Get Version

**GET** `/accounts/{account_id}/workers/workers/{worker_id}/versions/{version_id}`

Get details about a specific version.

### Responses

#### 200 Get version success.

> Data is at `body["result"]`

```json
{
  "annotations": {
    "workers/message": "*string*",
    "workers/tag": "*string*",
    "workers/triggered_by": "*string*"
  },
  "assets": {
    "config": {
      "html_handling": "*string*",
      "not_found_handling": "*string*",
      "run_worker_first": null
    },
    "jwt": "*string*"
  },
  "bindings": [
    {}
  ],
  "compatibility_date": "*string*",
  "compatibility_flags": [
    "*string*"
  ],
  "created_on": "*string*",
  "id": "*string*",
  "limits": {
    "cpu_ms": "*integer*"
  },
  "main_module": "*string*",
  "migrations": null,
  "modules": [
    {
      "content_base64": "*string*",
      "content_type": "*string*",
      "name": "*string*"
    }
  ],
  "number": "*integer*",
  "placement": {},
  "source": "*string*",
  "startup_time_ms": "*integer*",
  "usage_model": "*string*"
}
```

#### 4XX Get version failure.

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



## Delete Version

**DELETE** `/accounts/{account_id}/workers/workers/{worker_id}/versions/{version_id}`

Delete a version.

### Responses

#### 200 Delete version success.

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete version failure.

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


