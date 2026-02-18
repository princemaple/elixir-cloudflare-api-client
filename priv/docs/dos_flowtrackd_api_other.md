# dos-flowtrackd-api_other

## Create DNS Protection rule.

**POST** `/accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules`

Create a DNS Protection rule for an account.

### Responses

#### 200 Create DNS Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "profile_sensitivity": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Create DNS Protection rule failure.

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



## List all DNS Protection rules.

**GET** `/accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules`

List all DNS Protection rules for an account.

### Responses

#### 200 List all DNS Protection rules response.

> Data is at `body["result"]`

```json
[
  {
    "burst_sensitivity": "*string*",
    "created_on": "*string*",
    "id": "*string*",
    "mode": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "profile_sensitivity": "*string*",
    "rate_sensitivity": "*string*",
    "scope": "*string*"
  }
]
```

#### 4XX List all DNS Protection rules failure.

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



## Delete all DNS Protection rules.

**DELETE** `/accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules`

Delete all DNS Protection rules for an account.

### Responses

#### 200 Delete all DNS Protection rules response.

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



## Update DNS Protection rule.

**PATCH** `/accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules/{rule_id}`

Update a DNS Protection rule specified by the given UUID.

### Responses

#### 200 Update DNS Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "profile_sensitivity": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Update DNS Protection rule failure.

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



## Get DNS Protection rule.

**GET** `/accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules/{rule_id}`

Get a DNS Protection rule specified by the given UUID.

### Responses

#### 200 Get DNS Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "profile_sensitivity": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Get DNS Protection rule failure.

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



## Delete DNS Protection rule.

**DELETE** `/accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules/{rule_id}`

Delete a DNS Protection rule specified by the given UUID.

### Responses

#### 200 Delete DNS Protection rule response.

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

#### 4XX Delete DNS Protection rule failure.

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



## Create allowlist prefix.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist`

Create an allowlist prefix for an account.

### Responses

#### 200 Create allowlist prefix response.

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_on": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "prefix": "*string*"
}
```

#### 4XX Create allowlist prefix failure.

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



## List all allowlist prefixes.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist`

List all allowlist prefixes for an account.

### Responses

#### 200 List all allowlist prefixes response.

> Data is at `body["result"]`

```json
[
  {
    "comment": "*string*",
    "created_on": "*string*",
    "enabled": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "prefix": "*string*"
  }
]
```

#### 4XX List all allowlist prefixes failure.

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



## Delete all allowlist prefixes.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist`

Delete all allowlist prefixes for an account.

### Responses

#### 200 Delete all allowlist prefixes response.

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

#### 4XX Delete all allowlist prefixes failure.

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



## Update allowlist prefix.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist/{prefix_id}`

Update an allowlist prefix specified by the given UUID.

### Responses

#### 200 Update allowlist prefix response.

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_on": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "prefix": "*string*"
}
```

#### 4XX Update allowlist prefix failure.

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



## Get allowlist prefix.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist/{prefix_id}`

Get an allowlist prefix specified by the given UUID.

### Responses

#### 200 Get allowlist prefix response.

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_on": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "prefix": "*string*"
}
```

#### 4XX Get allowlist prefix failure.

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



## Delete allowlist prefix.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist/{prefix_id}`

Delete the allowlist prefix for an account given a UUID.

### Responses

#### 200 Delete allowlist prefix response.

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

#### 4XX Delete allowlist prefix failure.

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



## Create prefix.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes`

Create a prefix for an account.

### Responses

#### 200 Create prefix response.

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_on": "*string*",
  "excluded": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "prefix": "*string*"
}
```

#### 4XX Create prefix failure.

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



## List all prefixes.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes`

List all prefixes for an account.

### Responses

#### 200 List all prefixes response.

> Data is at `body["result"]`

```json
[
  {
    "comment": "*string*",
    "created_on": "*string*",
    "excluded": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "prefix": "*string*"
  }
]
```

#### 4XX List all allowlist prefixes failure.

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



## Delete all prefixes.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes`

Delete all prefixes for an account.

### Responses

#### 200 Delete all prefixes response.

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

#### 4XX Delete all prefixes failure.

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



## Create multiple prefixes.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/bulk`

Create multiple prefixes for an account.

### Responses

#### 200 Create multiple prefixes response.

> Data is at `body["result"]`

```json
[
  {
    "comment": "*string*",
    "created_on": "*string*",
    "excluded": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "prefix": "*string*"
  }
]
```

#### 4XX Create multiple prefixes failure.

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



## Update prefix.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/{prefix_id}`

Update a prefix specified by the given UUID.

### Responses

#### 200 Update prefix response.

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_on": "*string*",
  "excluded": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "prefix": "*string*"
}
```

#### 4XX Update prefix failure.

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



## Get prefix.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/{prefix_id}`

Get a prefix specified by the given UUID.

### Responses

#### 200 Get prefix response.

> Data is at `body["result"]`

```json
{
  "comment": "*string*",
  "created_on": "*string*",
  "excluded": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "prefix": "*string*"
}
```

#### 4XX Get prefix failure.

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



## Delete prefix.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/{prefix_id}`

Delete the prefix for an account given a UUID.

### Responses

#### 200 Delete prefix response.

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

#### 4XX Delete prefix failure.

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



## Create a SYN Protection filter.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters`

Create a SYN Protection filter for an account.

### Responses

#### 200 Create SYN Protection filter response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Create SYN Protection filter failure.

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



## List all SYN Protection filters.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters`

List all SYN Protection filters for an account.

### Responses

#### 200 List all SYN Protection filters response.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "expression": "*string*",
    "id": "*string*",
    "mode": "*string*",
    "modified_on": "*string*"
  }
]
```

#### 4XX List all SYN Protection filters failure.

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



## Delete all SYN Protection filters.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters`

Delete all SYN Protection filters for an account.

### Responses

#### 200 Delete all SYN Protection filters response.

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

#### 4XX Delete all SYN Protection filters failure.

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



## Update SYN Protection filter.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters/{filter_id}`

Update a SYN Protection filter specified by the given UUID.

### Responses

#### 200 Update SYN Protection filter response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Update SYN Protection filter failure.

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



## Get SYN Protection filter.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters/{filter_id}`

Get a SYN Protection filter specified by the given UUID.

### Responses

#### 200 Get SYN Protection filter response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Get SYN Protection filter failure.

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



## Delete SYN Protection filter.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters/{filter_id}`

Delete a SYN Protection filter specified by the given UUID.

### Responses

#### 200 Delete SYN Protection filter response.

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

#### 4XX Delete SYN Protection filter failure.

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



## Create SYN Protection rule.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules`

Create a SYN Protection rule for an account.

### Responses

#### 200 Create SYN Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mitigation_type": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Create SYN Protection rule failure.

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



## List all SYN Protection rules.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules`

List all SYN Protection rules for an account.

### Responses

#### 200 List all SYN Protection rules response.

> Data is at `body["result"]`

```json
[
  {
    "burst_sensitivity": "*string*",
    "created_on": "*string*",
    "id": "*string*",
    "mitigation_type": "*string*",
    "mode": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "rate_sensitivity": "*string*",
    "scope": "*string*"
  }
]
```

#### 4XX List all SYN Protection rules failure.

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



## Delete all SYN Protection rules.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules`

Delete all SYN Protection rules for an account.

### Responses

#### 200 Delete all SYN Protection rules response.

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

#### 4XX Delete all SYN Protection rules failure.

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



## Update SYN Protection rule.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules/{rule_id}`

Update a SYN Protection rule specified by the given UUID.

### Responses

#### 200 Update SYN Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mitigation_type": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Update SYN Protection rule failure.

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



## Get SYN Protection rule.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules/{rule_id}`

Get a SYN Protection rule specified by the given UUID.

### Responses

#### 200 Get SYN Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mitigation_type": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Get SYN Protection rule failure.

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



## Delete SYN Protection rule.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules/{rule_id}`

Delete a SYN Protection rule specified by the given UUID.

### Responses

#### 200 Delete SYN Protection rule response.

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

#### 4XX Delete SYN Protection rule failure.

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



## Create a TCP Flow Protection filter.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters`

Create a TCP Flow Protection filter for an account.

### Responses

#### 200 Create TCP Flow Protection filter response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Create TCP Flow Protection filter failure.

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



## List all TCP Flow Protection filters.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters`

List all TCP Flow Protection filters for an account.

### Responses

#### 200 List all TCP Flow Protection filters response.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "expression": "*string*",
    "id": "*string*",
    "mode": "*string*",
    "modified_on": "*string*"
  }
]
```

#### 4XX List all TCP Flow Protection filters failure.

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



## Delete all TCP Flow Protection filters.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters`

Delete all TCP Flow Protection filters for an account.

### Responses

#### 200 Delete all TCP Flow Protection filters response.

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

#### 4XX Delete all TCP Flow Protection filters failure.

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



## Update TCP Flow Protection filter.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/{filter_id}`

Update a TCP Flow Protection filter specified by the given UUID.

### Responses

#### 200 Update TCP Flow Protection filter response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Update TCP Flow Protection filter failure.

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



## Get TCP Flow Protection filter.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/{filter_id}`

Get a TCP Flow Protection filter specified by the given UUID.

### Responses

#### 200 Get TCP Flow Protection filter response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "expression": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*"
}
```

#### 4XX Get TCP Flow Protection filter failure.

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



## Delete TCP Flow Protection filter.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/{filter_id}`

Delete a TCP Flow Protection filter specified by the given UUID.

### Responses

#### 200 Delete TCP Flow Protection filter response.

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

#### 4XX Delete TCP Flow Protection filter failure.

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



## Create TCP Flow Protection rule.

**POST** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules`

Create a TCP Flow Protection rule for an account.

### Responses

#### 200 Create TCP Flow Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Create TCP Flow Protection rule failure.

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



## List all TCP Flow Protection rules.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules`

List all TCP Flow Protection rules for an account.

### Responses

#### 200 List all TCP Flow Protection rules response.

> Data is at `body["result"]`

```json
[
  {
    "burst_sensitivity": "*string*",
    "created_on": "*string*",
    "id": "*string*",
    "mode": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "rate_sensitivity": "*string*",
    "scope": "*string*"
  }
]
```

#### 4XX List all TCP Flow Protection rules failure.

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



## Delete all TCP Flow Protection rules.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules`

Delete all TCP Flow Protection rules for an account.

### Responses

#### 200 Delete all TCP Flow Protection rules response.

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

#### 4XX Delete all TCP Flow Protection rules failure.

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



## Update TCP Flow Protection rule.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/{rule_id}`

Update a TCP Flow Protection rule specified by the given UUID.

### Responses

#### 200 Update TCP Flow Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Update TCP Flow Protection rule failure.

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



## Get TCP Flow Protection rule.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/{rule_id}`

Get a TCP Flow Protection rule specified by the given UUID.

### Responses

#### 200 Get TCP Flow Protection rule response.

> Data is at `body["result"]`

```json
{
  "burst_sensitivity": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "rate_sensitivity": "*string*",
  "scope": "*string*"
}
```

#### 4XX Get TCP Flow Protection rule failure.

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



## Delete TCP Flow Protection rule.

**DELETE** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/{rule_id}`

Delete a TCP Flow Protection rule specified by the given UUID.

### Responses

#### 200 Delete TCP Flow Protection rule response.

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

#### 4XX Delete TCP Flow Protection rule failure.

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



## Update protection status.

**PATCH** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_protection_status`

Update the protection status of the account.

### Responses

#### 200 Update protection status response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Update protection status failure.

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



## Get protection status.

**GET** `/accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_protection_status`

Get the protection status of the account.

### Responses

#### 200 Get protection status response.

> Data is at `body["result"]`

```json
{
  "enabled": "*boolean*"
}
```

#### 4XX Get protection status failure.

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


