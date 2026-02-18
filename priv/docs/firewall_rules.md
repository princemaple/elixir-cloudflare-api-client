# Firewall rules

## Update firewall rules

**PUT** `/zones/{zone_id}/firewall/rules`

Updates one or more existing firewall rules.

### Responses

#### 200 Update firewall rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "filter": null,
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "products": [
      "*string*"
    ],
    "ref": "*string*"
  }
]
```

#### 4XX Update firewall rules response failure

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



## Create firewall rules

**POST** `/zones/{zone_id}/firewall/rules`

Create one or more firewall rules.

### Responses

#### 200 Create firewall rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "filter": null,
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "products": [
      "*string*"
    ],
    "ref": "*string*"
  }
]
```

#### 4XX Create firewall rules response failure

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



## Update priority of firewall rules

**PATCH** `/zones/{zone_id}/firewall/rules`

Updates the priority of existing firewall rules.

### Responses

#### 200 Update priority of firewall rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "filter": null,
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "products": [
      "*string*"
    ],
    "ref": "*string*"
  }
]
```

#### 4XX Update priority of firewall rules response failure

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



## List firewall rules

**GET** `/zones/{zone_id}/firewall/rules`

Fetches firewall rules in a zone. You can filter the results using several optional parameters.

### Responses

#### 200 List firewall rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "filter": null,
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "products": [
      "*string*"
    ],
    "ref": "*string*"
  }
]
```

#### 4XX List firewall rules response failure

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



## Delete firewall rules

**DELETE** `/zones/{zone_id}/firewall/rules`

Deletes existing firewall rules.

### Responses

#### 200 Delete firewall rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "filter": null,
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "products": [
      "*string*"
    ],
    "ref": "*string*"
  }
]
```

#### 4XX Delete firewall rules response failure

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



## Update a firewall rule

**PUT** `/zones/{zone_id}/firewall/rules/{rule_id}`

Updates an existing firewall rule.

### Responses

#### 200 Update a firewall rule response

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "description": "*string*",
  "filter": null,
  "id": "*string*",
  "paused": "*boolean*",
  "priority": "*number*",
  "products": [
    "*string*"
  ],
  "ref": "*string*"
}
```

#### 4XX Update a firewall rule response failure

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



## Update priority of a firewall rule

**PATCH** `/zones/{zone_id}/firewall/rules/{rule_id}`

Updates the priority of an existing firewall rule.

### Responses

#### 200 Update priority of a firewall rule response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "filter": null,
    "id": "*string*",
    "paused": "*boolean*",
    "priority": "*number*",
    "products": [
      "*string*"
    ],
    "ref": "*string*"
  }
]
```

#### 4XX Update priority of a firewall rule response failure

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



## Get a firewall rule

**GET** `/zones/{zone_id}/firewall/rules/{rule_id}`

Fetches the details of a firewall rule.

### Responses

#### 200 Get a firewall rule response

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "description": "*string*",
  "filter": null,
  "id": "*string*",
  "paused": "*boolean*",
  "priority": "*number*",
  "products": [
    "*string*"
  ],
  "ref": "*string*"
}
```

#### 4XX Get a firewall rule response failure

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



## Delete a firewall rule

**DELETE** `/zones/{zone_id}/firewall/rules/{rule_id}`

Deletes an existing firewall rule.

### Responses

#### 200 Delete a firewall rule response

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "description": "*string*",
  "filter": null,
  "id": "*string*",
  "paused": "*boolean*",
  "priority": "*number*",
  "products": [
    "*string*"
  ],
  "ref": "*string*"
}
```

#### 4XX Delete a firewall rule response failure

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


