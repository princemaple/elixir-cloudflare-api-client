# DNS Internal Views for an Account

## Create Internal DNS View

**POST** `/accounts/{account_id}/dns_settings/views`

Create Internal DNS View for an account

### Responses

#### 200 Create Internal DNS View response

> Data is at `body["result"]`

```json
{
  "created_time": "*string*",
  "id": "*string*",
  "modified_time": "*string*",
  "name": "*string*",
  "zones": [
    "*string*"
  ]
}
```

#### 4XX Create Internal DNS View response failure

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



## List Internal DNS Views

**GET** `/accounts/{account_id}/dns_settings/views`

List DNS Internal Views for an Account

### Responses

#### 200 List Internal DNS Views response

> Data is at `body["result"]`

```json
[
  {
    "created_time": "*string*",
    "id": "*string*",
    "modified_time": "*string*",
    "name": "*string*",
    "zones": [
      "*string*"
    ]
  }
]
```

#### 4XX List Internal DNS Views response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update Internal DNS View

**PATCH** `/accounts/{account_id}/dns_settings/views/{view_id}`

Update an existing Internal DNS View

### Responses

#### 200 Update Internal DNS View response

> Data is at `body["result"]`

```json
{
  "created_time": "*string*",
  "id": "*string*",
  "modified_time": "*string*",
  "name": "*string*",
  "zones": [
    "*string*"
  ]
}
```

#### 4XX Update Internal DNS View response failure

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



## DNS Internal View Details

**GET** `/accounts/{account_id}/dns_settings/views/{view_id}`

Get DNS Internal View

### Responses

#### 200 Get DNS Internal View response

> Data is at `body["result"]`

```json
{
  "created_time": "*string*",
  "id": "*string*",
  "modified_time": "*string*",
  "name": "*string*",
  "zones": [
    "*string*"
  ]
}
```

#### 4XX List Internal DNS Views response failure

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



## Delete Internal DNS View

**DELETE** `/accounts/{account_id}/dns_settings/views/{view_id}`

Delete an existing Internal DNS View

### Responses

#### 200 Delete Internal DNS View response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Update Internal DNS View response failure

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


