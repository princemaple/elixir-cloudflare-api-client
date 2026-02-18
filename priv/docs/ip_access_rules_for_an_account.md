# IP Access rules for an account

## Create an IP Access rule

**POST** `/accounts/{account_id}/firewall/access_rules/rules`

Creates a new IP Access rule for an account. The rule will apply to all zones in the account.

Note: To create an IP Access rule that applies to a single zone, refer to the [IP Access rules for a zone](#ip-access-rules-for-a-zone) endpoints.

### Responses

#### 200 Create an IP Access rule response.

> Data is at `body["result"]`

```json
{
  "allowed_modes": [
    "*string*"
  ],
  "configuration": {},
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "notes": "*string*",
  "scope": {
    "email": "*string*",
    "id": "*string*",
    "type": "*string*"
  }
}
```

#### 4XX Create an IP Access rule response failure.

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



## List IP Access rules

**GET** `/accounts/{account_id}/firewall/access_rules/rules`

Fetches IP Access rules of an account. These rules apply to all the zones in the account. You can filter the results using several optional parameters.

### Responses

#### 200 List IP Access rules response.

> Data is at `body["result"]`

```json
[
  {
    "allowed_modes": [
      "*string*"
    ],
    "configuration": {},
    "created_on": "*string*",
    "id": "*string*",
    "mode": "*string*",
    "modified_on": "*string*",
    "notes": "*string*",
    "scope": {
      "email": "*string*",
      "id": "*string*",
      "type": "*string*"
    }
  }
]
```

#### 4XX List IP Access rules response failure.

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



## Update an IP Access rule

**PATCH** `/accounts/{account_id}/firewall/access_rules/rules/{rule_id}`

Updates an IP Access rule defined at the account level.

Note: This operation will affect all zones in the account.

### Responses

#### 200 Update an IP Access rule response.

> Data is at `body["result"]`

```json
{
  "allowed_modes": [
    "*string*"
  ],
  "configuration": {},
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "notes": "*string*",
  "scope": {
    "email": "*string*",
    "id": "*string*",
    "type": "*string*"
  }
}
```

#### 4XX Update an IP Access rule response failure.

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



## Get an IP Access rule

**GET** `/accounts/{account_id}/firewall/access_rules/rules/{rule_id}`

Fetches the details of an IP Access rule defined at the account level.

### Responses

#### 200 Get an IP Access rule response.

> Data is at `body["result"]`

```json
{
  "allowed_modes": [
    "*string*"
  ],
  "configuration": {},
  "created_on": "*string*",
  "id": "*string*",
  "mode": "*string*",
  "modified_on": "*string*",
  "notes": "*string*",
  "scope": {
    "email": "*string*",
    "id": "*string*",
    "type": "*string*"
  }
}
```

#### 4XX Get an IP Access rule response failure.

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



## Delete an IP Access rule

**DELETE** `/accounts/{account_id}/firewall/access_rules/rules/{rule_id}`

Deletes an existing IP Access rule defined at the account level.

Note: This operation will affect all zones in the account.

### Responses

#### 200 Delete an IP Access rule response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an IP Access rule response failure.

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


