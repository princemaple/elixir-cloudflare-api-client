# Endpoint Health Checks

## Endpoint Health Check

**POST** `/accounts/{account_id}/diagnostics/endpoint-healthchecks`

Create Endpoint Health Check.

### Responses

#### 201 Endpoint Health Check response.

> Data is at `body["result"]`

```json
{
  "check_type": "*string*",
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*"
}
```

#### 4XX Endpoint Health Check response failure.

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



## List Endpoint Health Checks

**GET** `/accounts/{account_id}/diagnostics/endpoint-healthchecks`

List Endpoint Health Checks.

### Responses

#### 200 Endpoint Health Checks for account.

> Data is at `body["result"]`

```json
{
  "check_type": "*string*",
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*"
}
```

#### 4XX Endpoint Health Check response failure.

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



## Update Endpoint Health Check

**PUT** `/accounts/{account_id}/diagnostics/endpoint-healthchecks/{id}`

Update a Endpoint Health Check.

### Responses

#### 200 Endpoint Health Checks response.

> Data is at `body["result"]`

```json
{
  "check_type": "*string*",
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*"
}
```

#### 4XX Endpoint Health Check failure.

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



## Get Endpoint Health Check

**GET** `/accounts/{account_id}/diagnostics/endpoint-healthchecks/{id}`

Get a single Endpoint Health Check.

### Responses

#### 200 Endpoint Health Checks response.

> Data is at `body["result"]`

```json
{
  "check_type": "*string*",
  "endpoint": "*string*",
  "id": "*string*",
  "name": "*string*"
}
```

#### 4XX Endpoint Health Check failure.

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



## Delete Endpoint Health Check

**DELETE** `/accounts/{account_id}/diagnostics/endpoint-healthchecks/{id}`

Delete Endpoint Health Check.

### Responses

#### 200 Endpoint Health Checks response.

> Data is at `body["result"]`

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
  "success": "*boolean*"
}
```

#### 4XX Endpoint Health Check failure.

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


