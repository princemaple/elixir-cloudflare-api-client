# Account Load Balancer Monitor Groups

## Create Monitor Group

**POST** `/accounts/{account_id}/load_balancers/monitor_groups`

Create a new monitor group.

### Responses

#### 200 Create Monitor Group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "members": [
    {
      "created_at": "*string*",
      "enabled": "*boolean*",
      "monitor_id": "*string*",
      "monitoring_only": "*boolean*",
      "must_be_healthy": "*boolean*",
      "updated_at": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 412 Precondition Failed - Referenced monitor does not exist

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

#### 4XX Create Monitor Group response failure

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



## List Monitor Groups

**GET** `/accounts/{account_id}/load_balancers/monitor_groups`

List configured monitor groups.

### Responses

#### 200 List Monitor Groups response

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "id": "*string*",
    "members": [
      {
        "created_at": null,
        "enabled": null,
        "monitor_id": null,
        "monitoring_only": null,
        "must_be_healthy": null,
        "updated_at": null
      }
    ],
    "updated_at": "*string*"
  }
]
```

#### 4XX List Monitor Groups response failure

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



## Update Monitor Group

**PUT** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Modify a configured monitor group.

### Responses

#### 200 Update Monitor Group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "members": [
    {
      "created_at": "*string*",
      "enabled": "*boolean*",
      "monitor_id": "*string*",
      "monitoring_only": "*boolean*",
      "must_be_healthy": "*boolean*",
      "updated_at": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 412 Precondition Failed - Referenced monitor does not exist

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

#### 4XX Update Monitor Group response failure

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



## Patch Monitor Group

**PATCH** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Apply changes to an existing monitor group, overwriting the supplied properties.

### Responses

#### 200 Patch Monitor Group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "members": [
    {
      "created_at": "*string*",
      "enabled": "*boolean*",
      "monitor_id": "*string*",
      "monitoring_only": "*boolean*",
      "must_be_healthy": "*boolean*",
      "updated_at": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 412 Precondition Failed - Referenced monitor does not exist

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

#### 4XX Patch Monitor Group response failure

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



## Monitor Group Details

**GET** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Fetch a single configured monitor group.

### Responses

#### 200 Monitor Group Details response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "members": [
    {
      "created_at": "*string*",
      "enabled": "*boolean*",
      "monitor_id": "*string*",
      "monitoring_only": "*boolean*",
      "must_be_healthy": "*boolean*",
      "updated_at": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX Monitor Group Details response failure

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



## Delete Monitor Group

**DELETE** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Delete a configured monitor group.

### Responses

#### 200 Delete Monitor Group response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "members": [
    {
      "created_at": "*string*",
      "enabled": "*boolean*",
      "monitor_id": "*string*",
      "monitoring_only": "*boolean*",
      "must_be_healthy": "*boolean*",
      "updated_at": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 412 Precondition Failed - Monitor group is in use by one or more pools

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

#### 4XX Delete Monitor Group response failure

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



## List Monitor Group References

**GET** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}/references`

Get the list of resources that reference the provided monitor group.

### Responses

#### 200 List Monitor Group References response.

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

#### 4XX List Monitor Group References response failure.

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


