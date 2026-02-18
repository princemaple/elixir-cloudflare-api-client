# Notification Silences

## Update Silences

**PUT** `/accounts/{account_id}/alerting/v3/silences`

Updates existing silences for an account.

### Responses

#### 200 Update Silences response

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "end_time": "*string*",
    "id": "*string*",
    "policy_id": "*string*",
    "start_time": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX Update Silences response failure

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
      "end_time": "*string*",
      "id": "*string*",
      "policy_id": "*string*",
      "start_time": "*string*",
      "updated_at": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Create Silences

**POST** `/accounts/{account_id}/alerting/v3/silences`

Creates a new silence for an account.

### Responses

#### 200 Create Silences response

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

#### 4XX Create Silences response failure

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
      "end_time": "*string*",
      "id": "*string*",
      "policy_id": "*string*",
      "start_time": "*string*",
      "updated_at": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## List Silences

**GET** `/accounts/{account_id}/alerting/v3/silences`

Gets a list of silences for an account.

### Responses

#### 200 List Silences response

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "end_time": "*string*",
    "id": "*string*",
    "policy_id": "*string*",
    "start_time": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX List Silences response failure

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
      "end_time": "*string*",
      "id": "*string*",
      "policy_id": "*string*",
      "start_time": "*string*",
      "updated_at": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get Silence

**GET** `/accounts/{account_id}/alerting/v3/silences/{silence_id}`

Gets a specific silence for an account.

### Responses

#### 200 Get Silence response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "end_time": "*string*",
  "id": "*string*",
  "policy_id": "*string*",
  "start_time": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get Silence response failure

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
    "end_time": "*string*",
    "id": "*string*",
    "policy_id": "*string*",
    "start_time": "*string*",
    "updated_at": "*string*"
  },
  "success": "*boolean*"
}
```



## Delete Silence

**DELETE** `/accounts/{account_id}/alerting/v3/silences/{silence_id}`

Deletes an existing silence for an account.

### Responses

#### 200 Delete Silence response

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

#### 4XX Delete Silence response failure

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
    "end_time": "*string*",
    "id": "*string*",
    "policy_id": "*string*",
    "start_time": "*string*",
    "updated_at": "*string*"
  },
  "success": "*boolean*"
}
```


