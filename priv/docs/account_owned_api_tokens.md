# Account Owned API Tokens

## Create Token

**POST** `/accounts/{account_id}/tokens`

Create a new Account Owned API token.

### Responses

#### 200 Create Token response

> Data is at `body["result"]`

```json
{
  "condition": {
    "request_ip": {
      "in": null,
      "not_in": null
    }
  },
  "expires_on": "*string*",
  "id": "*string*",
  "issued_on": "*string*",
  "last_used_on": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "not_before": "*string*",
  "policies": [
    {
      "effect": null,
      "id": null,
      "permission_groups": null,
      "resources": null
    }
  ],
  "status": "*string*",
  "value": "*string*"
}
```

#### 4XX Create Token response failure

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



## List Tokens

**GET** `/accounts/{account_id}/tokens`

List all Account Owned API tokens created for this account.

### Responses

#### 200 List Tokens response

> Data is at `body["result"]`

```json
[
  {
    "condition": {
      "request_ip": null
    },
    "expires_on": "*string*",
    "id": "*string*",
    "issued_on": "*string*",
    "last_used_on": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "not_before": "*string*",
    "policies": [
      null
    ],
    "status": "*string*"
  }
]
```

#### 4XX List Tokens response failure

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



## List Permission Groups

**GET** `/accounts/{account_id}/tokens/permission_groups`

Find all available permission groups for Account Owned API Tokens

### Responses

#### 200 List Account Owned API Token Permission Groups response

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "name": "*string*",
    "scopes": [
      "*string*"
    ]
  }
]
```

#### 4XX List Account Owned API Token Permission Groups response failure

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



## Verify Token

**GET** `/accounts/{account_id}/tokens/verify`

Test whether a token works.

### Responses

#### 200 Verify Token response

> Data is at `body["result"]`

```json
null
```

#### 4XX Verify Token response failure

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



## Update Token

**PUT** `/accounts/{account_id}/tokens/{token_id}`

Update an existing token.

### Responses

#### 200 Update Token response

> Data is at `body["result"]`

```json
{
  "condition": {
    "request_ip": {
      "in": null,
      "not_in": null
    }
  },
  "expires_on": "*string*",
  "id": "*string*",
  "issued_on": "*string*",
  "last_used_on": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "not_before": "*string*",
  "policies": [
    {
      "effect": null,
      "id": null,
      "permission_groups": null,
      "resources": null
    }
  ],
  "status": "*string*"
}
```

#### 4XX Update Token response failure

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



## Token Details

**GET** `/accounts/{account_id}/tokens/{token_id}`

Get information about a specific Account Owned API token.

### Responses

#### 200 Token Details response

> Data is at `body["result"]`

```json
{
  "condition": {
    "request_ip": {
      "in": null,
      "not_in": null
    }
  },
  "expires_on": "*string*",
  "id": "*string*",
  "issued_on": "*string*",
  "last_used_on": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "not_before": "*string*",
  "policies": [
    {
      "effect": null,
      "id": null,
      "permission_groups": null,
      "resources": null
    }
  ],
  "status": "*string*"
}
```

#### 4XX Token Details response failure

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



## Delete Token

**DELETE** `/accounts/{account_id}/tokens/{token_id}`

Destroy an Account Owned API token.

### Responses

#### 200 Delete Token response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Token response failure

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



## Roll Token

**PUT** `/accounts/{account_id}/tokens/{token_id}/value`

Roll the Account Owned API token secret.

### Responses

#### 200 Roll Token response

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Roll Token response failure

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


