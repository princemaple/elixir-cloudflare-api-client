# Notification webhooks

## Create a webhook

**POST** `/accounts/{account_id}/alerting/v3/destinations/webhooks`

Creates a new webhook destination.

### Responses

#### 201 Create a webhook response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Create a webhook response failure

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
  "result": {
    "id": "*string*"
  },
  "success": "*boolean*"
}
```



## List webhooks

**GET** `/accounts/{account_id}/alerting/v3/destinations/webhooks`

Gets a list of all configured webhook destinations.

### Responses

#### 200 List webhooks response

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "id": "*string*",
    "last_failure": "*string*",
    "last_success": "*string*",
    "name": "*string*",
    "secret": "*string*",
    "type": "*string*",
    "url": "*string*"
  }
]
```

#### 4XX List webhooks response failure

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
  "result": [
    {
      "created_at": "*string*",
      "id": "*string*",
      "last_failure": "*string*",
      "last_success": "*string*",
      "name": "*string*",
      "secret": "*string*",
      "type": "*string*",
      "url": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Update a webhook

**PUT** `/accounts/{account_id}/alerting/v3/destinations/webhooks/{webhook_id}`

Update a webhook destination.

### Responses

#### 200 Update a webhook response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Update a webhook response failure

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
  "result": {
    "id": "*string*"
  },
  "success": "*boolean*"
}
```



## Get a webhook

**GET** `/accounts/{account_id}/alerting/v3/destinations/webhooks/{webhook_id}`

Get details for a single webhooks destination.

### Responses

#### 200 Get a webhook response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "id": "*string*",
  "last_failure": "*string*",
  "last_success": "*string*",
  "name": "*string*",
  "secret": "*string*",
  "type": "*string*",
  "url": "*string*"
}
```

#### 4XX Get a webhook response failure

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
  "result": {
    "created_at": "*string*",
    "id": "*string*",
    "last_failure": "*string*",
    "last_success": "*string*",
    "name": "*string*",
    "secret": "*string*",
    "type": "*string*",
    "url": "*string*"
  },
  "success": "*boolean*"
}
```



## Delete a webhook

**DELETE** `/accounts/{account_id}/alerting/v3/destinations/webhooks/{webhook_id}`

Delete a configured webhook destination.

### Responses

#### 200 Delete a webhook response

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Delete a webhook response failure

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
  "success": "*boolean*"
}
```


