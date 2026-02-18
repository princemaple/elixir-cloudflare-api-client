# workers_pipelines_other

## [DEPRECATED] Create Pipeline

**POST** `/accounts/{account_id}/pipelines`

[DEPRECATED] Create a new pipeline. Use the new /pipelines/v1/pipelines endpoint instead.

### Responses

#### 200 [DEPRECATED] Indicates a successfully created pipeline. Use /pipelines/v1/pipelines instead.

> Data is at `body["result"]`

```json
{
  "destination": {
    "batch": {
      "max_bytes": "*integer*",
      "max_duration_s": "*number*",
      "max_rows": "*integer*"
    },
    "compression": {
      "type": "*string*"
    },
    "format": "*string*",
    "path": {
      "bucket": "*string*",
      "filename": "*string*",
      "filepath": "*string*",
      "prefix": "*string*"
    },
    "type": "*string*"
  },
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*",
  "source": [
    null
  ],
  "version": "*number*"
}
```

#### 4XX Indicates an error in creating a pipeline.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "results": {},
  "success": "*boolean*"
}
```



## [DEPRECATED] List Pipelines

**GET** `/accounts/{account_id}/pipelines`

[DEPRECATED] List, filter, and paginate pipelines in an account. Use the new /pipelines/v1/pipelines endpoint instead.

### Responses

#### 200 [DEPRECATED] Lists the pipelines. Use /pipelines/v1/pipelines instead.

> Data is at `body["result"]`

```json
{
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "results": [
    {
      "destination": {
        "batch": {
          "max_bytes": null,
          "max_duration_s": null,
          "max_rows": null
        },
        "compression": {
          "type": null
        },
        "format": "*string*",
        "path": {
          "bucket": null,
          "filename": null,
          "filepath": null,
          "prefix": null
        },
        "type": "*string*"
      },
      "endpoint": "*string*",
      "id": "*string*",
      "name": "*string*",
      "source": [
        null
      ],
      "version": "*number*"
    }
  ],
  "success": "*boolean*"
}
```

#### 4XX Indicates the error trying to list pipelines.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "results": {},
  "success": "*boolean*"
}
```



## Create Pipeline

**POST** `/accounts/{account_id}/pipelines/v1/pipelines`

Create a new Pipeline.

### Responses

#### 200 Indicates a successfully created Pipeline.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "sql": "*string*",
  "status": "*string*"
}
```

#### 4XX Indicates an error in creating a Pipeline.

```json

```



## List Pipelines

**GET** `/accounts/{account_id}/pipelines/v1/pipelines`

List/Filter Pipelines in Account.

### Responses

#### 200 Indicates a successfully listed Pipelines.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "sql": "*string*",
    "status": "*string*"
  }
]
```

#### 4XX Indicates an error in listing Pipelines.

```json

```



## Get Pipeline Details

**GET** `/accounts/{account_id}/pipelines/v1/pipelines/{pipeline_id}`

Get Pipelines Details.

### Responses

#### 200 Indicates a successfully retrieved Pipeline.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "sql": "*string*",
  "status": "*string*",
  "tables": [
    {
      "id": "*string*",
      "latest": "*integer*",
      "name": "*string*",
      "type": "*string*",
      "version": "*integer*"
    }
  ]
}
```

#### 4XX Indicates an error in retrieving Pipelines.

```json

```



## Delete Pipelines

**DELETE** `/accounts/{account_id}/pipelines/v1/pipelines/{pipeline_id}`

Delete Pipeline in Account.

### Responses

#### 200 Indicates a successfully deleted Pipeline.

> Data is at `body["result"]`

```json

```

#### 4XX Indicates an error in listing Pipelines.

```json

```



## Create Sink

**POST** `/accounts/{account_id}/pipelines/v1/sinks`

Create a new Sink.

### Responses

#### 200 Indicates a successfully created Sink.

> Data is at `body["result"]`

```json
{
  "config": null,
  "created_at": "*string*",
  "format": null,
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "schema": {
    "fields": [
      null
    ],
    "format": null,
    "inferred": "*boolean*"
  },
  "type": "*string*"
}
```

#### 4XX Indicates an error in creating a Sink.

```json

```



## List Sinks

**GET** `/accounts/{account_id}/pipelines/v1/sinks`

List/Filter Sinks in Account.

### Responses

#### 200 Indicates successfully listed Sinks.

> Data is at `body["result"]`

```json
[
  {
    "config": null,
    "created_at": "*string*",
    "format": null,
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "schema": {
      "fields": [
        null
      ],
      "format": null,
      "inferred": "*boolean*"
    },
    "type": "*string*"
  }
]
```

#### 4XX Indicates an error in listing Sinks.

```json

```



## Get Sink Details

**GET** `/accounts/{account_id}/pipelines/v1/sinks/{sink_id}`

Get Sink Details.

### Responses

#### 200 Indicates that Sink was retrieved.

> Data is at `body["result"]`

```json
{
  "config": null,
  "created_at": "*string*",
  "format": null,
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "schema": {
    "fields": [
      null
    ],
    "format": null,
    "inferred": "*boolean*"
  },
  "type": "*string*"
}
```

#### 4XX Indicates an error in listing Sinks.

```json

```



## Delete Sink

**DELETE** `/accounts/{account_id}/pipelines/v1/sinks/{sink_id}`

Delete Pipeline in Account.

### Responses

#### 200 Indicates a successfully deleted Sink.

> Data is at `body["result"]`

```json

```

#### 4XX Indicates an error in listing Sinks.

```json

```



## Create Stream

**POST** `/accounts/{account_id}/pipelines/v1/streams`

Create a new Stream.

### Responses

#### 200 Indicates a successfully created Stream.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "endpoint": "*string*",
  "format": null,
  "http": {
    "authentication": "*boolean*",
    "cors": {
      "origins": [
        "*string*"
      ]
    },
    "enabled": "*boolean*"
  },
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "schema": {
    "fields": [
      null
    ],
    "format": null,
    "inferred": "*boolean*"
  },
  "version": "*integer*",
  "worker_binding": {
    "enabled": "*boolean*"
  }
}
```

#### 4XX Indicates an error in creating a Stream.

```json

```



## List Streams

**GET** `/accounts/{account_id}/pipelines/v1/streams`

List/Filter Streams in Account.

### Responses

#### 200 Indicates a successfully created Stream.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "endpoint": "*string*",
    "format": null,
    "http": {
      "authentication": "*boolean*",
      "cors": {
        "origins": [
          "*string*"
        ]
      },
      "enabled": "*boolean*"
    },
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "schema": {
      "fields": [
        null
      ],
      "format": null,
      "inferred": "*boolean*"
    },
    "version": "*integer*",
    "worker_binding": {
      "enabled": "*boolean*"
    }
  }
]
```

#### 4XX Indicates an error in listing Streams.

```json

```



## Update Stream

**PATCH** `/accounts/{account_id}/pipelines/v1/streams/{stream_id}`

Update a Stream.

### Responses

#### 200 Indicates a successfully updated Stream.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "endpoint": "*string*",
  "format": null,
  "http": {
    "authentication": "*boolean*",
    "cors": {
      "origins": [
        "*string*"
      ]
    },
    "enabled": "*boolean*"
  },
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "version": "*integer*",
  "worker_binding": {
    "enabled": "*boolean*"
  }
}
```

#### 4XX Indicates an error in creating a Stream.

```json

```



## Get Stream Details

**GET** `/accounts/{account_id}/pipelines/v1/streams/{stream_id}`

Get Stream Details.

### Responses

#### 200 Indicates a successfully retrieved Stream.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "endpoint": "*string*",
  "format": null,
  "http": {
    "authentication": "*boolean*",
    "cors": {
      "origins": [
        "*string*"
      ]
    },
    "enabled": "*boolean*"
  },
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "schema": {
    "fields": [
      null
    ],
    "format": null,
    "inferred": "*boolean*"
  },
  "version": "*integer*",
  "worker_binding": {
    "enabled": "*boolean*"
  }
}
```

#### 4XX Indicates an error in retrieving Stream.

```json

```



## Delete Stream

**DELETE** `/accounts/{account_id}/pipelines/v1/streams/{stream_id}`

Delete Stream in Account.

### Responses

#### 200 Indicates a successfully deleted Stream.

> Data is at `body["result"]`

```json

```

#### 4XX Indicates an error in listing Streams.

```json

```



## Validate SQL

**POST** `/accounts/{account_id}/pipelines/v1/validate_sql`

Validate Arroyo SQL.

### Responses

#### 200 Indicates SQL validation success.

> Data is at `body["result"]`

```json
{
  "graph": {
    "edges": [
      {
        "dest_id": null,
        "edge_type": null,
        "key_type": null,
        "src_id": null,
        "value_type": null
      }
    ],
    "nodes": [
      {
        "description": null,
        "node_id": null,
        "operator": null,
        "parallelism": null
      }
    ]
  },
  "tables": {}
}
```

#### 4XX Indicates SQL validation failed.

```json

```



## [DEPRECATED] Update Pipeline

**PUT** `/accounts/{account_id}/pipelines/{pipeline_name}`

[DEPRECATED] Update an existing pipeline. Use the new /pipelines/v1/pipelines endpoint instead.

### Responses

#### 200 [DEPRECATED] Indicates a successfully updated pipeline.

> Data is at `body["result"]`

```json
{
  "destination": {
    "batch": {
      "max_bytes": "*integer*",
      "max_duration_s": "*number*",
      "max_rows": "*integer*"
    },
    "compression": {
      "type": "*string*"
    },
    "format": "*string*",
    "path": {
      "bucket": "*string*",
      "filename": "*string*",
      "filepath": "*string*",
      "prefix": "*string*"
    },
    "type": "*string*"
  },
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*",
  "source": [
    null
  ],
  "version": "*number*"
}
```

#### 4XX Indicates an error updating pipeline.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "results": {},
  "success": "*boolean*"
}
```



## [DEPRECATED] Get Pipeline

**GET** `/accounts/{account_id}/pipelines/{pipeline_name}`

[DEPRECATED] Get configuration of a pipeline. Use the new /pipelines/v1/pipelines endpoint instead.

### Responses

#### 200 [DEPRECATED] Describes the configuration of a pipeline.

> Data is at `body["result"]`

```json
{
  "destination": {
    "batch": {
      "max_bytes": "*integer*",
      "max_duration_s": "*number*",
      "max_rows": "*integer*"
    },
    "compression": {
      "type": "*string*"
    },
    "format": "*string*",
    "path": {
      "bucket": "*string*",
      "filename": "*string*",
      "filepath": "*string*",
      "prefix": "*string*"
    },
    "type": "*string*"
  },
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*",
  "source": [
    null
  ],
  "version": "*number*"
}
```

#### 404 Indicates that the pipeline was not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "results": {},
  "success": "*boolean*"
}
```



## [DEPRECATED] Delete Pipeline

**DELETE** `/accounts/{account_id}/pipelines/{pipeline_name}`

[DEPRECATED] Delete a pipeline. Use the new /pipelines/v1/pipelines endpoint instead.

### Responses

#### 200 [DEPRECATED] Indicates a successfully deleted pipeline.

> Data is at `body["result"]`

```json

```

#### 4XX Indicates an error in deleting a pipeline.

```json

```


