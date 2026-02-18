# Zone Lockdown

## Create a Zone Lockdown rule

**POST** `/zones/{zone_id}/firewall/lockdowns`

Creates a new Zone Lockdown rule.

### Responses

#### 200 Create a Zone Lockdown rule response

> Data is at `body["result"]`

```json
{
  "configurations": [
    null
  ],
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "paused": "*boolean*",
  "urls": [
    "*string*"
  ]
}
```

#### 4XX Create a Zone Lockdown rule response failure

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



## List Zone Lockdown rules

**GET** `/zones/{zone_id}/firewall/lockdowns`

Fetches Zone Lockdown rules. You can filter the results using several optional parameters.

### Responses

#### 200 List Zone Lockdown rules response

> Data is at `body["result"]`

```json
[
  {
    "configurations": [
      null
    ],
    "created_on": "*string*",
    "description": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "paused": "*boolean*",
    "urls": [
      "*string*"
    ]
  }
]
```

#### 4XX List Zone Lockdown rules response failure

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



## Update a Zone Lockdown rule

**PUT** `/zones/{zone_id}/firewall/lockdowns/{lock_downs_id}`

Updates an existing Zone Lockdown rule.

### Responses

#### 200 Update a Zone Lockdown rule response

> Data is at `body["result"]`

```json
{
  "configurations": [
    null
  ],
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "paused": "*boolean*",
  "urls": [
    "*string*"
  ]
}
```

#### 4XX Update a Zone Lockdown rule response failure

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



## Get a Zone Lockdown rule

**GET** `/zones/{zone_id}/firewall/lockdowns/{lock_downs_id}`

Fetches the details of a Zone Lockdown rule.

### Responses

#### 200 Get a Zone Lockdown rule response

> Data is at `body["result"]`

```json
{
  "configurations": [
    null
  ],
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "paused": "*boolean*",
  "urls": [
    "*string*"
  ]
}
```

#### 4XX Get a Zone Lockdown rule response failure

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



## Delete a Zone Lockdown rule

**DELETE** `/zones/{zone_id}/firewall/lockdowns/{lock_downs_id}`

Deletes an existing Zone Lockdown rule.

### Responses

#### 200 Delete a Zone Lockdown rule response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a Zone Lockdown rule response failure

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


