# Device posture rules

## Create a device posture rule

**POST** `/accounts/{account_id}/devices/posture`

Creates a new device posture rule.

### Responses

#### 200 Create device posture rule response.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "expiration": "*string*",
  "id": "*string*",
  "input": {},
  "match": [
    {
      "platform": null
    }
  ],
  "name": "*string*",
  "schedule": "*string*",
  "type": "*string*"
}
```

#### 4XX Create device posture rule response failure.

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



## List device posture rules

**GET** `/accounts/{account_id}/devices/posture`

Fetches device posture rules for a Zero Trust account.

### Responses

#### 200 List device posture rules response.

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "expiration": "*string*",
    "id": "*string*",
    "input": {},
    "match": [
      null
    ],
    "name": "*string*",
    "schedule": "*string*",
    "type": "*string*"
  }
]
```

#### 4XX List device posture rules response failure.

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



## Update a device posture rule

**PUT** `/accounts/{account_id}/devices/posture/{rule_id}`

Updates a device posture rule.

### Responses

#### 200 Update a device posture rule response.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "expiration": "*string*",
  "id": "*string*",
  "input": {},
  "match": [
    {
      "platform": null
    }
  ],
  "name": "*string*",
  "schedule": "*string*",
  "type": "*string*"
}
```

#### 4XX Update a device posture rule response failure.

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



## Get device posture rule details

**GET** `/accounts/{account_id}/devices/posture/{rule_id}`

Fetches a single device posture rule.

### Responses

#### 200 Get device posture rule details response.

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "expiration": "*string*",
  "id": "*string*",
  "input": {},
  "match": [
    {
      "platform": null
    }
  ],
  "name": "*string*",
  "schedule": "*string*",
  "type": "*string*"
}
```

#### 4XX Get device posture rule details response failure.

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



## Delete a device posture rule

**DELETE** `/accounts/{account_id}/devices/posture/{rule_id}`

Deletes a device posture rule.

### Responses

#### 200 Delete a device posture rule response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete a device posture rule response failure.

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


