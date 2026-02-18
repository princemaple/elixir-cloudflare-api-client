# DEX Rules

## Create a DEX Rule

**POST** `/accounts/{account_id}/dex/rules`

Create a DEX Rule

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "match": "*string*",
  "name": "*string*",
  "targeted_tests": [
    {
      "data": {
        "host": null,
        "kind": null,
        "method": null
      },
      "enabled": "*boolean*",
      "name": "*string*",
      "test_id": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX Create DEX Rule failure response

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



## List DEX Rules

**GET** `/accounts/{account_id}/dex/rules`

List DEX Rules

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
{
  "rules": [
    {
      "created_at": "*string*",
      "description": "*string*",
      "id": "*string*",
      "match": "*string*",
      "name": "*string*",
      "targeted_tests": [
        null
      ],
      "updated_at": "*string*"
    }
  ]
}
```

#### 4XX List DEX Rules failure response

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



## Update a DEX Rule

**PATCH** `/accounts/{account_id}/dex/rules/{rule_id}`

Update a DEX Rule

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "match": "*string*",
  "name": "*string*",
  "targeted_tests": [
    {
      "data": {
        "host": null,
        "kind": null,
        "method": null
      },
      "enabled": "*boolean*",
      "name": "*string*",
      "test_id": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX Update DEX Rule failure response

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



## Get DEX Rule

**GET** `/accounts/{account_id}/dex/rules/{rule_id}`

Get details for a DEX Rule

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "id": "*string*",
  "match": "*string*",
  "name": "*string*",
  "targeted_tests": [
    {
      "data": {
        "host": null,
        "kind": null,
        "method": null
      },
      "enabled": "*boolean*",
      "name": "*string*",
      "test_id": "*string*"
    }
  ],
  "updated_at": "*string*"
}
```

#### 4XX List DEX Rule failure response

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



## Delete a DEX Rule

**DELETE** `/accounts/{account_id}/dex/rules/{rule_id}`

Delete a DEX Rule

### Responses

#### 200 success response

> Data is at `body["result"]`

```json
"*boolean*"
```

#### 4XX Update DEX Rule failure response

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


