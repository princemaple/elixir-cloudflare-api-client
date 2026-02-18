# Load Balancer Monitors

## Create Monitor

**POST** `/user/load_balancers/monitors`

Create a configured monitor.

### Responses

#### 200 Create Monitor response.

> Data is at `body["result"]`

```json
{
  "allow_insecure": "*boolean*",
  "consecutive_down": "*integer*",
  "consecutive_up": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "expected_body": "*string*",
  "expected_codes": "*string*",
  "follow_redirects": "*boolean*",
  "header": {},
  "id": "*string*",
  "interval": "*integer*",
  "method": "*string*",
  "modified_on": "*string*",
  "path": "*string*",
  "port": "*integer*",
  "probe_zone": "*string*",
  "retries": "*integer*",
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Create Monitor response failure.

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



## List Monitors

**GET** `/user/load_balancers/monitors`

List configured monitors for a user.

### Responses

#### 200 Successful list monitors response.

> Data is at `body["result"]`

```json
[
  {
    "allow_insecure": "*boolean*",
    "consecutive_down": "*integer*",
    "consecutive_up": "*integer*",
    "created_on": "*string*",
    "description": "*string*",
    "expected_body": "*string*",
    "expected_codes": "*string*",
    "follow_redirects": "*boolean*",
    "header": {},
    "id": "*string*",
    "interval": "*integer*",
    "method": "*string*",
    "modified_on": "*string*",
    "path": "*string*",
    "port": "*integer*",
    "probe_zone": "*string*",
    "retries": "*integer*",
    "timeout": "*integer*",
    "type": "*string*"
  }
]
```

#### 4XX Failed list monitors response.

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



## Update Monitor

**PUT** `/user/load_balancers/monitors/{monitor_id}`

Modify a configured monitor.

### Responses

#### 200 Update Monitor response.

> Data is at `body["result"]`

```json
{
  "allow_insecure": "*boolean*",
  "consecutive_down": "*integer*",
  "consecutive_up": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "expected_body": "*string*",
  "expected_codes": "*string*",
  "follow_redirects": "*boolean*",
  "header": {},
  "id": "*string*",
  "interval": "*integer*",
  "method": "*string*",
  "modified_on": "*string*",
  "path": "*string*",
  "port": "*integer*",
  "probe_zone": "*string*",
  "retries": "*integer*",
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Update Monitor response failure.

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



## Patch Monitor

**PATCH** `/user/load_balancers/monitors/{monitor_id}`

Apply changes to an existing monitor, overwriting the supplied properties.

### Responses

#### 200 Patch Monitor response.

> Data is at `body["result"]`

```json
{
  "allow_insecure": "*boolean*",
  "consecutive_down": "*integer*",
  "consecutive_up": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "expected_body": "*string*",
  "expected_codes": "*string*",
  "follow_redirects": "*boolean*",
  "header": {},
  "id": "*string*",
  "interval": "*integer*",
  "method": "*string*",
  "modified_on": "*string*",
  "path": "*string*",
  "port": "*integer*",
  "probe_zone": "*string*",
  "retries": "*integer*",
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Patch Monitor response failure.

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



## Monitor Details

**GET** `/user/load_balancers/monitors/{monitor_id}`

List a single configured monitor for a user.

### Responses

#### 200 Monitor Details response.

> Data is at `body["result"]`

```json
{
  "allow_insecure": "*boolean*",
  "consecutive_down": "*integer*",
  "consecutive_up": "*integer*",
  "created_on": "*string*",
  "description": "*string*",
  "expected_body": "*string*",
  "expected_codes": "*string*",
  "follow_redirects": "*boolean*",
  "header": {},
  "id": "*string*",
  "interval": "*integer*",
  "method": "*string*",
  "modified_on": "*string*",
  "path": "*string*",
  "port": "*integer*",
  "probe_zone": "*string*",
  "retries": "*integer*",
  "timeout": "*integer*",
  "type": "*string*"
}
```

#### 4XX Monitor Details response failure.

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



## Delete Monitor

**DELETE** `/user/load_balancers/monitors/{monitor_id}`

Delete a configured monitor.

### Responses

#### 200 Delete Monitor response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Monitor response failure.

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



## Preview Monitor

**POST** `/user/load_balancers/monitors/{monitor_id}/preview`

Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

### Responses

#### 200 Preview Monitor response.

> Data is at `body["result"]`

```json
{
  "pools": {},
  "preview_id": "*string*"
}
```

#### 4XX Preview Monitor response failure.

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



## List Monitor References

**GET** `/user/load_balancers/monitors/{monitor_id}/references`

Get the list of resources that reference the provided monitor.

### Responses

#### 200 List Monitor References response.

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

#### 4XX List Monitor References response failure.

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



## Preview Result

**GET** `/user/load_balancers/preview/{preview_id}`

Get the result of a previous preview operation using the provided preview_id.

### Responses

#### 200 Preview Result response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Preview Result response failure.

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


