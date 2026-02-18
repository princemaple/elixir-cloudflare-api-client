# Webhooks

## Add a webhook

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks`

Adds a new webhook to an App.

### Responses

#### 201 Webhook registered successfully

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "enabled": "*boolean*",
    "events": [
      "*string*"
    ],
    "id": "*string*",
    "name": "*string*",
    "updated_at": "*string*",
    "url": "*string*"
  },
  "success": "*boolean*"
}
```

#### 400 Error - malformed request

```json
{
  "error": {
    "code": "*number*",
    "message": "*string*"
  },
  "success": "*boolean*"
}
```

#### 401 Invalid credentials

```json

```



## Fetch all webhooks details

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks`

Returns details of all webhooks for an App.

### Responses

#### 200 Operation successful

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "created_at": "*string*",
      "enabled": "*boolean*",
      "events": [
        "*string*"
      ],
      "id": "*string*",
      "name": "*string*",
      "updated_at": "*string*",
      "url": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Invalid credentials

```json

```



## Replace a webhook

**PUT** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Replace all details for the given webhook ID.

### Responses

#### 200 Operation successful

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "enabled": "*boolean*",
    "events": [
      "*string*"
    ],
    "id": "*string*",
    "name": "*string*",
    "updated_at": "*string*",
    "url": "*string*"
  },
  "success": "*boolean*"
}
```

#### 400 Error - malformed request

```json
{
  "error": {
    "code": "*number*",
    "message": "*string*"
  },
  "success": "*boolean*"
}
```

#### 401 Invalid credentials

```json

```



## Edit a webhook

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Edits the webhook details for the given webhook ID.

### Responses

#### 200 Operation successful

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "enabled": "*boolean*",
    "events": [
      "*string*"
    ],
    "id": "*string*",
    "name": "*string*",
    "updated_at": "*string*",
    "url": "*string*"
  },
  "success": "*boolean*"
}
```

#### 400 Error - malformed request

```json
{
  "error": {
    "code": "*number*",
    "message": "*string*"
  },
  "success": "*boolean*"
}
```

#### 401 Invalid credentials

```json

```



## Fetch details of a webhook

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Returns webhook details for the given webhook ID.

### Responses

#### 200 Operation successful

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "enabled": "*boolean*",
    "events": [
      "*string*"
    ],
    "id": "*string*",
    "name": "*string*",
    "updated_at": "*string*",
    "url": "*string*"
  },
  "success": "*boolean*"
}
```

#### 400 Error - malformed request

```json
{
  "error": {
    "code": "*number*",
    "message": "*string*"
  },
  "success": "*boolean*"
}
```

#### 401 Invalid credentials

```json

```



## Delete a webhook

**DELETE** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Removes a webhook for the given webhook ID.

### Responses

#### 200 Operation successful

> Data is at `body["result"]`

```json
{
  "data": {
    "created_at": "*string*",
    "enabled": "*boolean*",
    "events": [
      "*string*"
    ],
    "id": "*string*",
    "name": "*string*",
    "updated_at": "*string*",
    "url": "*string*"
  },
  "success": "*boolean*"
}
```

#### 400 Error - malformed request

```json
{
  "error": {
    "code": "*number*",
    "message": "*string*"
  },
  "success": "*boolean*"
}
```

#### 401 Invalid credentials

```json

```


