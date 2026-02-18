# Load Balancer Pools

## Create Pool

**POST** `/user/load_balancers/pools`

Create a new pool.

### Responses

#### 200 Create Pool response.

> Data is at `body["result"]`

```json
{
  "check_regions": [
    "*string*"
  ],
  "created_on": "*string*",
  "description": "*string*",
  "disabled_at": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "latitude": "*number*",
  "load_shedding": {
    "default_percent": "*number*",
    "default_policy": "*string*",
    "session_percent": "*number*",
    "session_policy": "*string*"
  },
  "longitude": "*number*",
  "minimum_origins": "*integer*",
  "modified_on": "*string*",
  "monitor": "*string*",
  "monitor_group": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "notification_email": "*string*",
  "notification_filter": {
    "origin": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    },
    "pool": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    }
  },
  "origin_steering": {
    "policy": "*string*"
  },
  "origins": [
    {
      "address": null,
      "disabled_at": null,
      "enabled": null,
      "header": null,
      "name": null,
      "port": null,
      "virtual_network_id": null,
      "weight": null
    }
  ]
}
```

#### 4XX Create Pool response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Patch Pools

**PATCH** `/user/load_balancers/pools`

Apply changes to a number of existing pools, overwriting the supplied properties. Pools are ordered by ascending `name`. Returns the list of affected pools. Supports the standard pagination query parameters, either `limit`/`offset` or `per_page`/`page`.

### Responses

#### 200 Patch Pools response.

> Data is at `body["result"]`

```json
[
  {
    "check_regions": [
      "*string*"
    ],
    "created_on": "*string*",
    "description": "*string*",
    "disabled_at": "*string*",
    "enabled": "*boolean*",
    "id": "*string*",
    "latitude": "*number*",
    "load_shedding": {
      "default_percent": "*number*",
      "default_policy": "*string*",
      "session_percent": "*number*",
      "session_policy": "*string*"
    },
    "longitude": "*number*",
    "minimum_origins": "*integer*",
    "modified_on": "*string*",
    "monitor": "*string*",
    "monitor_group": "*string*",
    "name": "*string*",
    "networks": [
      "*string*"
    ],
    "notification_email": "*string*",
    "notification_filter": {
      "origin": null,
      "pool": null
    },
    "origin_steering": {
      "policy": "*string*"
    },
    "origins": [
      null
    ]
  }
]
```

#### 4XX Patch Pools response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*",
    "total_pages": "*number*"
  },
  "success": "*boolean*"
}
```



## List Pools

**GET** `/user/load_balancers/pools`

List configured pools.

### Responses

#### 200 List Pools response.

> Data is at `body["result"]`

```json
[
  {
    "check_regions": [
      "*string*"
    ],
    "created_on": "*string*",
    "description": "*string*",
    "disabled_at": "*string*",
    "enabled": "*boolean*",
    "id": "*string*",
    "latitude": "*number*",
    "load_shedding": {
      "default_percent": "*number*",
      "default_policy": "*string*",
      "session_percent": "*number*",
      "session_policy": "*string*"
    },
    "longitude": "*number*",
    "minimum_origins": "*integer*",
    "modified_on": "*string*",
    "monitor": "*string*",
    "monitor_group": "*string*",
    "name": "*string*",
    "networks": [
      "*string*"
    ],
    "notification_email": "*string*",
    "notification_filter": {
      "origin": null,
      "pool": null
    },
    "origin_steering": {
      "policy": "*string*"
    },
    "origins": [
      null
    ]
  }
]
```

#### 4XX List Pools response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*",
    "total_pages": "*number*"
  },
  "success": "*boolean*"
}
```



## Update Pool

**PUT** `/user/load_balancers/pools/{pool_id}`

Modify a configured pool.

### Responses

#### 200 Update Pool response.

> Data is at `body["result"]`

```json
{
  "check_regions": [
    "*string*"
  ],
  "created_on": "*string*",
  "description": "*string*",
  "disabled_at": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "latitude": "*number*",
  "load_shedding": {
    "default_percent": "*number*",
    "default_policy": "*string*",
    "session_percent": "*number*",
    "session_policy": "*string*"
  },
  "longitude": "*number*",
  "minimum_origins": "*integer*",
  "modified_on": "*string*",
  "monitor": "*string*",
  "monitor_group": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "notification_email": "*string*",
  "notification_filter": {
    "origin": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    },
    "pool": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    }
  },
  "origin_steering": {
    "policy": "*string*"
  },
  "origins": [
    {
      "address": null,
      "disabled_at": null,
      "enabled": null,
      "header": null,
      "name": null,
      "port": null,
      "virtual_network_id": null,
      "weight": null
    }
  ]
}
```

#### 4XX Update Pool response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Patch Pool

**PATCH** `/user/load_balancers/pools/{pool_id}`

Apply changes to an existing pool, overwriting the supplied properties.

### Responses

#### 200 Patch Pool response.

> Data is at `body["result"]`

```json
{
  "check_regions": [
    "*string*"
  ],
  "created_on": "*string*",
  "description": "*string*",
  "disabled_at": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "latitude": "*number*",
  "load_shedding": {
    "default_percent": "*number*",
    "default_policy": "*string*",
    "session_percent": "*number*",
    "session_policy": "*string*"
  },
  "longitude": "*number*",
  "minimum_origins": "*integer*",
  "modified_on": "*string*",
  "monitor": "*string*",
  "monitor_group": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "notification_email": "*string*",
  "notification_filter": {
    "origin": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    },
    "pool": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    }
  },
  "origin_steering": {
    "policy": "*string*"
  },
  "origins": [
    {
      "address": null,
      "disabled_at": null,
      "enabled": null,
      "header": null,
      "name": null,
      "port": null,
      "virtual_network_id": null,
      "weight": null
    }
  ]
}
```

#### 4XX Patch Pool response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Pool Details

**GET** `/user/load_balancers/pools/{pool_id}`

Fetch a single configured pool.

### Responses

#### 200 Pool Details response.

> Data is at `body["result"]`

```json
{
  "check_regions": [
    "*string*"
  ],
  "created_on": "*string*",
  "description": "*string*",
  "disabled_at": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "latitude": "*number*",
  "load_shedding": {
    "default_percent": "*number*",
    "default_policy": "*string*",
    "session_percent": "*number*",
    "session_policy": "*string*"
  },
  "longitude": "*number*",
  "minimum_origins": "*integer*",
  "modified_on": "*string*",
  "monitor": "*string*",
  "monitor_group": "*string*",
  "name": "*string*",
  "networks": [
    "*string*"
  ],
  "notification_email": "*string*",
  "notification_filter": {
    "origin": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    },
    "pool": {
      "disable": "*boolean*",
      "healthy": "*boolean*"
    }
  },
  "origin_steering": {
    "policy": "*string*"
  },
  "origins": [
    {
      "address": null,
      "disabled_at": null,
      "enabled": null,
      "header": null,
      "name": null,
      "port": null,
      "virtual_network_id": null,
      "weight": null
    }
  ]
}
```

#### 4XX Pool Details response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete Pool

**DELETE** `/user/load_balancers/pools/{pool_id}`

Delete a configured pool.

### Responses

#### 200 Delete Pool response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Pool response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Pool Health Details

**GET** `/user/load_balancers/pools/{pool_id}/health`

Fetch the latest pool health status for a single pool.

### Responses

#### 200 Pool Health Details response.

> Data is at `body["result"]`

```json
{
  "pool_id": "*string*",
  "pop_health": {
    "healthy": "*boolean*",
    "origins": [
      {
        "ip": {
          "failure_reason": null,
          "healthy": null,
          "response_code": null,
          "rtt": null
        }
      }
    ]
  }
}
```

#### 4XX Pool Health Details response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Preview Pool

**POST** `/user/load_balancers/pools/{pool_id}/preview`

Preview pool health using provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

### Responses

#### 200 Preview Pool response.

> Data is at `body["result"]`

```json
{
  "pools": {},
  "preview_id": "*string*"
}
```

#### 4XX Preview Pool response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Pool References

**GET** `/user/load_balancers/pools/{pool_id}/references`

Get the list of resources that reference the provided pool.

### Responses

#### 200 List Pool References response.

> Data is at `body["result"]`

```json
[
  {
    "reference_type": "*string*",
    "resource_id": "*string*",
    "resource_name": "*string*",
    "resource_type": "*string*"
  }
]
```

#### 4XX List Pool References response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


