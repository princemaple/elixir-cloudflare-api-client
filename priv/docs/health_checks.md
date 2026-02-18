# Health Checks

## Create Health Check

**POST** `/zones/{zone_id}/healthchecks`

Create a new health check.

### Responses

#### 200 Create Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Create Health Check response failure.

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



## List Health Checks

**GET** `/zones/{zone_id}/healthchecks`

List configured health checks.

### Responses

#### 200 List Health Checks response

> Data is at `body["result"]`

```json
[
  {
    "address": "*string*",
    "check_regions": [
      "*string*"
    ],
    "consecutive_fails": "*integer*",
    "consecutive_successes": "*integer*",
    "created_on": "*string*",
    "description": "*string*",
    "failure_reason": "*string*",
    "http_config": {
      "allow_insecure": "*boolean*",
      "expected_body": "*string*",
      "expected_codes": [
        null
      ],
      "follow_redirects": "*boolean*",
      "header": {},
      "method": "*string*",
      "path": "*string*",
      "port": "*integer*"
    },
    "id": "*string*",
    "interval": "*integer*",
    "modified_on": "*string*",
    "name": "*string*",
    "retries": "*integer*",
    "status": "*string*",
    "suspended": "*boolean*",
    "tcp_config": {
      "method": "*string*",
      "port": "*integer*"
    },
    "timeout": "*integer*",
    "type": "*string*"
  }
]
```

#### 4XX List Health Checks response failure.

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
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Create Preview Health Check

**POST** `/zones/{zone_id}/healthchecks/preview`

Create a new preview health check.

### Responses

#### 200 Create Preview Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Create Preview Health Check response failure.

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



## Health Check Preview Details

**GET** `/zones/{zone_id}/healthchecks/preview/{healthcheck_id}`

Fetch a single configured health check preview.

### Responses

#### 200 Health Check Preview Details response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Health Check Preview Details response failure.

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



## Delete Preview Health Check

**DELETE** `/zones/{zone_id}/healthchecks/preview/{healthcheck_id}`

Delete a health check.

### Responses

#### 200 Delete Preview Health Check response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Preview Health Check response failure.

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



## Update Health Check

**PUT** `/zones/{zone_id}/healthchecks/{healthcheck_id}`

Update a configured health check.

### Responses

#### 200 Update Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Update Health Check response failure.

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



## Patch Health Check

**PATCH** `/zones/{zone_id}/healthchecks/{healthcheck_id}`

Patch a configured health check.

### Responses

#### 200 Patch Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Patch Health Check response failure.

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



## Health Check Details

**GET** `/zones/{zone_id}/healthchecks/{healthcheck_id}`

Fetch a single configured health check.

### Responses

#### 200 Health Check Details response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Health Check Details response failure.

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



## Delete Health Check

**DELETE** `/zones/{zone_id}/healthchecks/{healthcheck_id}`

Delete a health check.

### Responses

#### 200 Delete Health Check response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Health Check response failure.

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



## Create Health Check

**POST** `/zones/{zone_id}/smart_shield/healthchecks`

Create a new health check.

### Responses

#### 200 Create Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Create Health Check response failure.

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



## List Health Checks

**GET** `/zones/{zone_id}/smart_shield/healthchecks`

List configured health checks.

### Responses

#### 200 List Health Checks response

> Data is at `body["result"]`

```json
[
  {
    "address": "*string*",
    "check_regions": [
      "*string*"
    ],
    "consecutive_fails": "*integer*",
    "consecutive_successes": "*integer*",
    "created_on": "*string*",
    "description": "*string*",
    "failure_reason": "*string*",
    "http_config": {
      "allow_insecure": "*boolean*",
      "expected_body": "*string*",
      "expected_codes": [
        null
      ],
      "follow_redirects": "*boolean*",
      "header": {},
      "method": "*string*",
      "path": "*string*",
      "port": "*integer*"
    },
    "id": "*string*",
    "interval": "*integer*",
    "modified_on": "*string*",
    "name": "*string*",
    "retries": "*integer*",
    "status": "*string*",
    "suspended": "*boolean*",
    "tcp_config": {
      "method": "*string*",
      "port": "*integer*"
    },
    "timeout": "*integer*",
    "type": "*string*"
  }
]
```

#### 4XX List Health Checks response failure.

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
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update Health Check

**PUT** `/zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`

Update a configured health check.

### Responses

#### 200 Update Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Update Health Check response failure.

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



## Patch Health Check

**PATCH** `/zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`

Patch a configured health check.

### Responses

#### 200 Patch Health Check response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Patch Health Check response failure.

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



## Health Check Details

**GET** `/zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`

Fetch a single configured health check.

### Responses

#### 200 Health Check Details response.

> Data is at `body["result"]`

```json
{
  "address": "*string*",
  "check_regions": [
    "*string*"
  ],
  "consecutive_fails": "*integer*",
  "consecutive_successes": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "failure_reason": "*string*",
  "http_config": {
    "allow_insecure": "*boolean*",
    "expected_body": "*string*",
    "expected_codes": [
      "*string*"
    ],
    "follow_redirects": "*boolean*",
    "header": {},
    "method": "*string*",
    "path": "*string*",
    "port": "*integer*"
  },
  "id": "*string*",
  "interval": "*integer*",
  "modified_on": "*string*",
  "name": "*string*",
  "retries": "*integer*",
  "status": "*string*",
  "suspended": "*boolean*",
  "tcp_config": {
    "method": "*string*",
    "port": "*integer*"
  },
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Health Check Details response failure.

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



## Delete Health Check

**DELETE** `/zones/{zone_id}/smart_shield/healthchecks/{healthcheck_id}`

Delete a health check.

### Responses

#### 200 Delete Health Check response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Health Check response failure.

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


