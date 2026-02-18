# AI Gateway Gateways

## Create a new Gateway

**POST** `/accounts/{account_id}/ai-gateway/gateways`



### Responses

#### 200 Returns the created Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "authentication": "*boolean*",
  "cache_invalidate_on_update": "*boolean*",
  "cache_ttl": "*integer*",
  "collect_logs": "*boolean*",
  "created_at": "*string*",
  "dlp": null,
  "id": "*string*",
  "internal_id": "*string*",
  "is_default": "*boolean*",
  "log_management": "*integer*",
  "log_management_strategy": "*string*",
  "logpush": "*boolean*",
  "logpush_public_key": "*string*",
  "modified_at": "*string*",
  "otel": [
    {
      "authorization": "*string*",
      "headers": {},
      "url": "*string*"
    }
  ],
  "rate_limiting_interval": "*integer*",
  "rate_limiting_limit": "*integer*",
  "rate_limiting_technique": "*string*",
  "store_id": "*string*",
  "stripe": {
    "authorization": "*string*",
    "usage_events": [
      {
        "payload": "*string*"
      }
    ]
  },
  "zdr": "*boolean*"
}
```

#### 400 Input Validation Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*",
      "path": [
        "*string*"
      ]
    }
  ],
  "success": "*boolean*"
}
```



## List Gateways

**GET** `/accounts/{account_id}/ai-gateway/gateways`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*string*",
    "account_tag": "*string*",
    "authentication": "*boolean*",
    "cache_invalidate_on_update": "*boolean*",
    "cache_ttl": "*integer*",
    "collect_logs": "*boolean*",
    "created_at": "*string*",
    "dlp": null,
    "id": "*string*",
    "internal_id": "*string*",
    "is_default": "*boolean*",
    "log_management": "*integer*",
    "log_management_strategy": "*string*",
    "logpush": "*boolean*",
    "logpush_public_key": "*string*",
    "modified_at": "*string*",
    "otel": [
      {
        "authorization": "*string*",
        "headers": {},
        "url": "*string*"
      }
    ],
    "rate_limiting_interval": "*integer*",
    "rate_limiting_limit": "*integer*",
    "rate_limiting_technique": "*string*",
    "store_id": "*string*",
    "stripe": {
      "authorization": "*string*",
      "usage_events": [
        {
          "payload": "*string*"
        }
      ]
    },
    "zdr": "*boolean*"
  }
]
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Gateway URL

**GET** `/accounts/{account_id}/ai-gateway/gateways/{gateway_id}/url/{provider}`



### Responses

#### 200 Returns the log details

> Data is at `body["result"]`

```json
"*string*"
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a Gateway

**PUT** `/accounts/{account_id}/ai-gateway/gateways/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "authentication": "*boolean*",
  "cache_invalidate_on_update": "*boolean*",
  "cache_ttl": "*integer*",
  "collect_logs": "*boolean*",
  "created_at": "*string*",
  "dlp": null,
  "id": "*string*",
  "internal_id": "*string*",
  "is_default": "*boolean*",
  "log_management": "*integer*",
  "log_management_strategy": "*string*",
  "logpush": "*boolean*",
  "logpush_public_key": "*string*",
  "modified_at": "*string*",
  "otel": [
    {
      "authorization": "*string*",
      "headers": {},
      "url": "*string*"
    }
  ],
  "rate_limiting_interval": "*integer*",
  "rate_limiting_limit": "*integer*",
  "rate_limiting_technique": "*string*",
  "store_id": "*string*",
  "stripe": {
    "authorization": "*string*",
    "usage_events": [
      {
        "payload": "*string*"
      }
    ]
  },
  "zdr": "*boolean*"
}
```

#### 400 Input Validation Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*",
      "path": [
        "*string*"
      ]
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Fetch a Gateway

**GET** `/accounts/{account_id}/ai-gateway/gateways/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "authentication": "*boolean*",
  "cache_invalidate_on_update": "*boolean*",
  "cache_ttl": "*integer*",
  "collect_logs": "*boolean*",
  "created_at": "*string*",
  "dlp": null,
  "id": "*string*",
  "internal_id": "*string*",
  "is_default": "*boolean*",
  "log_management": "*integer*",
  "log_management_strategy": "*string*",
  "logpush": "*boolean*",
  "logpush_public_key": "*string*",
  "modified_at": "*string*",
  "otel": [
    {
      "authorization": "*string*",
      "headers": {},
      "url": "*string*"
    }
  ],
  "rate_limiting_interval": "*integer*",
  "rate_limiting_limit": "*integer*",
  "rate_limiting_technique": "*string*",
  "store_id": "*string*",
  "stripe": {
    "authorization": "*string*",
    "usage_events": [
      {
        "payload": "*string*"
      }
    ]
  },
  "zdr": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Delete a Gateway

**DELETE** `/accounts/{account_id}/ai-gateway/gateways/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "account_tag": "*string*",
  "authentication": "*boolean*",
  "cache_invalidate_on_update": "*boolean*",
  "cache_ttl": "*integer*",
  "collect_logs": "*boolean*",
  "created_at": "*string*",
  "dlp": null,
  "id": "*string*",
  "internal_id": "*string*",
  "is_default": "*boolean*",
  "log_management": "*integer*",
  "log_management_strategy": "*string*",
  "logpush": "*boolean*",
  "logpush_public_key": "*string*",
  "modified_at": "*string*",
  "otel": [
    {
      "authorization": "*string*",
      "headers": {},
      "url": "*string*"
    }
  ],
  "rate_limiting_interval": "*integer*",
  "rate_limiting_limit": "*integer*",
  "rate_limiting_technique": "*string*",
  "store_id": "*string*",
  "stripe": {
    "authorization": "*string*",
    "usage_events": [
      {
        "payload": "*string*"
      }
    ]
  },
  "zdr": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


