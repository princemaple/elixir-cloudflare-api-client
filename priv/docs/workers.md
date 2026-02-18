# Workers

## List builds by script

**GET** `/accounts/{account_id}/builds/workers/{external_script_id}/builds`

Get all builds for a specific worker script with pagination

### Responses

#### 200 Builds retrieved successfully

> Data is at `body["result"]`

```json
[
  {
    "build_outcome": "*string*",
    "build_trigger_metadata": {
      "author": "*string*",
      "branch": "*string*",
      "build_command": "*string*",
      "build_token_name": "*string*",
      "build_token_uuid": "*string*",
      "build_trigger_source": null,
      "commit_hash": "*string*",
      "commit_message": "*string*",
      "deploy_command": "*string*",
      "environment_variables": {},
      "provider_account_name": "*string*",
      "provider_type": null,
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
        "created_on": null,
        "deleted_on": null,
        "modified_on": null,
        "provider_account_id": null,
        "provider_account_name": null,
        "provider_type": null,
        "repo_connection_uuid": null,
        "repo_id": null,
        "repo_name": null
      },
      "root_directory": "*string*",
      "trigger_name": "*string*",
      "trigger_uuid": "*string*"
    }
  }
]
```



## List triggers by script

**GET** `/accounts/{account_id}/builds/workers/{external_script_id}/triggers`

Get all triggers for a specific worker script

### Responses

#### 200 Triggers retrieved successfully

> Data is at `body["result"]`

```json
[
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
      "provider_type": null,
      "repo_connection_uuid": "*string*",
      "repo_id": "*string*",
      "repo_name": "*string*"
    },
    "root_directory": "*string*",
    "trigger_name": "*string*",
    "trigger_uuid": "*string*"
  }
]
```



## Create Worker

**POST** `/accounts/{account_id}/workers/workers`

Create a new Worker.

### Responses

#### 200 Create Worker success.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "logpush": "*boolean*",
  "name": "*string*",
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*"
    }
  },
  "references": {
    "dispatch_namespace_outbounds": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "domains": [
      {
        "certificate_id": "*string*",
        "hostname": "*string*",
        "id": "*string*",
        "zone_id": "*string*",
        "zone_name": "*string*"
      }
    ],
    "durable_objects": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "queues": [
      {
        "queue_consumer_id": "*string*",
        "queue_id": "*string*",
        "queue_name": "*string*"
      }
    ],
    "workers": [
      {
        "id": "*string*",
        "name": "*string*"
      }
    ]
  },
  "subdomain": {
    "enabled": "*boolean*",
    "previews_enabled": "*boolean*"
  },
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "name": "*string*"
    }
  ],
  "updated_on": "*string*"
}
```

#### 400 Bad Request - Invalid input data.

```json
{
  "errors": [
    {}
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

#### 401 

```json

```

#### 403 Forbidden - Access denied or limit exceeded.

```json
{
  "errors": [
    {}
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

#### 409 Conflict - Resource already exists.

```json
{
  "errors": [
    {}
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

#### 500 

```json

```



## List Workers

**GET** `/accounts/{account_id}/workers/workers`

List all Workers for an account.

### Responses

#### 200 List Workers success.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "id": "*string*",
    "logpush": "*boolean*",
    "name": "*string*",
    "observability": {
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "logs": {
        "enabled": "*boolean*",
        "head_sampling_rate": "*number*",
        "invocation_logs": "*boolean*"
      }
    },
    "references": {
      "dispatch_namespace_outbounds": [
        {
          "namespace_id": null,
          "namespace_name": null,
          "worker_id": null,
          "worker_name": null
        }
      ],
      "domains": [
        {
          "certificate_id": null,
          "hostname": null,
          "id": null,
          "zone_id": null,
          "zone_name": null
        }
      ],
      "durable_objects": [
        {
          "namespace_id": null,
          "namespace_name": null,
          "worker_id": null,
          "worker_name": null
        }
      ],
      "queues": [
        {
          "queue_consumer_id": null,
          "queue_id": null,
          "queue_name": null
        }
      ],
      "workers": [
        {
          "id": null,
          "name": null
        }
      ]
    },
    "subdomain": {
      "enabled": "*boolean*",
      "previews_enabled": "*boolean*"
    },
    "tags": [
      "*string*"
    ],
    "tail_consumers": [
      {
        "name": "*string*"
      }
    ],
    "updated_on": "*string*"
  }
]
```

#### 401 

```json

```

#### 500 

```json

```



## Update Worker

**PUT** `/accounts/{account_id}/workers/workers/{worker_id}`

Perform a complete replacement of a Worker, where omitted properties are set to their default values. This is the exact same as the Create Worker endpoint, but operates on an existing Worker. To perform a partial update instead, use the Edit Worker endpoint.

### Responses

#### 200 Update Worker success.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "logpush": "*boolean*",
  "name": "*string*",
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*"
    }
  },
  "references": {
    "dispatch_namespace_outbounds": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "domains": [
      {
        "certificate_id": "*string*",
        "hostname": "*string*",
        "id": "*string*",
        "zone_id": "*string*",
        "zone_name": "*string*"
      }
    ],
    "durable_objects": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "queues": [
      {
        "queue_consumer_id": "*string*",
        "queue_id": "*string*",
        "queue_name": "*string*"
      }
    ],
    "workers": [
      {
        "id": "*string*",
        "name": "*string*"
      }
    ]
  },
  "subdomain": {
    "enabled": "*boolean*",
    "previews_enabled": "*boolean*"
  },
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "name": "*string*"
    }
  ],
  "updated_on": "*string*"
}
```

#### 400 Bad Request - Invalid input data.

```json
{
  "errors": [
    {}
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

#### 401 

```json

```

#### 403 Forbidden - Insufficient permissions or quota exceeded.

```json
{
  "errors": [
    {}
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

#### 404 

```json

```

#### 409 Conflict - Worker name already exists.

```json
{
  "errors": [
    {}
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

#### 500 

```json

```



## Edit Worker

**PATCH** `/accounts/{account_id}/workers/workers/{worker_id}`

Perform a partial update on a Worker, where omitted properties are left unchanged from their current values.

### Responses

#### 200 Partially Update Worker success.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "logpush": "*boolean*",
  "name": "*string*",
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*"
    }
  },
  "references": {
    "dispatch_namespace_outbounds": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "domains": [
      {
        "certificate_id": "*string*",
        "hostname": "*string*",
        "id": "*string*",
        "zone_id": "*string*",
        "zone_name": "*string*"
      }
    ],
    "durable_objects": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "queues": [
      {
        "queue_consumer_id": "*string*",
        "queue_id": "*string*",
        "queue_name": "*string*"
      }
    ],
    "workers": [
      {
        "id": "*string*",
        "name": "*string*"
      }
    ]
  },
  "subdomain": {
    "enabled": "*boolean*",
    "previews_enabled": "*boolean*"
  },
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "name": "*string*"
    }
  ],
  "updated_on": "*string*"
}
```

#### 400 Bad Request - Invalid input data.

```json
{
  "errors": [
    {}
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

#### 401 

```json

```

#### 403 Forbidden - Insufficient permissions or quota exceeded.

```json
{
  "errors": [
    {}
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

#### 404 

```json

```

#### 409 Conflict - Worker name already exists.

```json
{
  "errors": [
    {}
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

#### 500 

```json

```



## Get Worker

**GET** `/accounts/{account_id}/workers/workers/{worker_id}`

Get details about a specific Worker.

### Responses

#### 200 Get Worker success.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "id": "*string*",
  "logpush": "*boolean*",
  "name": "*string*",
  "observability": {
    "enabled": "*boolean*",
    "head_sampling_rate": "*number*",
    "logs": {
      "enabled": "*boolean*",
      "head_sampling_rate": "*number*",
      "invocation_logs": "*boolean*"
    }
  },
  "references": {
    "dispatch_namespace_outbounds": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "domains": [
      {
        "certificate_id": "*string*",
        "hostname": "*string*",
        "id": "*string*",
        "zone_id": "*string*",
        "zone_name": "*string*"
      }
    ],
    "durable_objects": [
      {
        "namespace_id": "*string*",
        "namespace_name": "*string*",
        "worker_id": "*string*",
        "worker_name": "*string*"
      }
    ],
    "queues": [
      {
        "queue_consumer_id": "*string*",
        "queue_id": "*string*",
        "queue_name": "*string*"
      }
    ],
    "workers": [
      {
        "id": "*string*",
        "name": "*string*"
      }
    ]
  },
  "subdomain": {
    "enabled": "*boolean*",
    "previews_enabled": "*boolean*"
  },
  "tags": [
    "*string*"
  ],
  "tail_consumers": [
    {
      "name": "*string*"
    }
  ],
  "updated_on": "*string*"
}
```

#### 400 Bad Request - Missing or invalid parameters.

```json
{
  "errors": [
    {}
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

#### 404 

```json

```

#### 500 

```json

```



## Delete Worker

**DELETE** `/accounts/{account_id}/workers/workers/{worker_id}`

Delete a Worker and all its associated resources (versions, deployments, etc.).

### Responses

#### 200 Delete Worker success.

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

#### 400 Bad Request - Missing or invalid parameters.

```json
{
  "errors": [
    {}
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

#### 401 

```json

```

#### 404 

```json

```

#### 500 

```json

```


