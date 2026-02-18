# Account Roles

## List Roles

**GET** `/accounts/{account_id}/roles`

Get all available roles for an account.

### Responses

#### 200 List Roles response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "id": "*string*",
    "name": "*string*",
    "permissions": {
      "analytics": null,
      "billing": null,
      "cache_purge": null,
      "dns": null,
      "dns_records": null,
      "lb": null,
      "logs": null,
      "organization": null,
      "ssl": null,
      "waf": null,
      "zone_settings": null,
      "zones": null
    }
  }
]
```

#### 4XX List Roles response failure

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



## Role Details

**GET** `/accounts/{account_id}/roles/{role_id}`

Get information about a specific role for an account.

### Responses

#### 200 Role Details response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "id": "*string*",
  "name": "*string*",
  "permissions": {
    "analytics": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "billing": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "cache_purge": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "dns": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "dns_records": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "lb": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "logs": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "organization": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "ssl": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "waf": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "zone_settings": {
      "read": "*boolean*",
      "write": "*boolean*"
    },
    "zones": {
      "read": "*boolean*",
      "write": "*boolean*"
    }
  }
}
```

#### 4XX Role Details response failure

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


