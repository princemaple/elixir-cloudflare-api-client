# Device Posture Integrations

## Create a device posture integration

**POST** `/accounts/{account_id}/devices/posture/integration`

Create a new device posture integration.

### Responses

#### 200 Create a device posture integration response.

> Data is at `body["result"]`

```json
{
  "config": {},
  "id": "*string*",
  "interval": "*string*",
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Create a device posture integration response failure.

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



## List your device posture integrations

**GET** `/accounts/{account_id}/devices/posture/integration`

Fetches the list of device posture integrations for an account.

### Responses

#### 200 List your device posture integrations response.

> Data is at `body["result"]`

```json
[
  {
    "config": {},
    "id": "*string*",
    "interval": "*string*",
    "name": "*string*",
    "type": "*string*"
  }
]
```

#### 4XX List your device posture integrations response failure.

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



## Update a device posture integration

**PATCH** `/accounts/{account_id}/devices/posture/integration/{integration_id}`

Updates a configured device posture integration.

### Responses

#### 200 Update a device posture integration response.

> Data is at `body["result"]`

```json
{
  "config": {},
  "id": "*string*",
  "interval": "*string*",
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Update a device posture integration response failure.

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



## Get device posture integration details

**GET** `/accounts/{account_id}/devices/posture/integration/{integration_id}`

Fetches details for a single device posture integration.

### Responses

#### 200 Get device posture integration details response.

> Data is at `body["result"]`

```json
{
  "config": {},
  "id": "*string*",
  "interval": "*string*",
  "name": "*string*",
  "type": "*string*"
}
```

#### 4XX Get device posture integration details response failure.

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



## Delete a device posture integration

**DELETE** `/accounts/{account_id}/devices/posture/integration/{integration_id}`

Delete a configured device posture integration.

### Responses

#### 200 Delete a device posture integration response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete a device posture integration response failure.

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


