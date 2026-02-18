# IP Access rules for a user

## Create an IP Access rule

**POST** `/user/firewall/access_rules/rules`

Creates a new IP Access rule for all zones owned by the current user.

Note: To create an IP Access rule that applies to a specific zone, refer to the [IP Access rules for a zone](#ip-access-rules-for-a-zone) endpoints.

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
  "notes": "*string*"
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

**GET** `/user/firewall/access_rules/rules`

Fetches IP Access rules of the user. You can filter the results using several optional parameters.

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
    "notes": "*string*"
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

**PATCH** `/user/firewall/access_rules/rules/{rule_id}`

Updates an IP Access rule defined at the user level. You can only update the rule action (`mode` parameter) and notes.

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
  "notes": "*string*"
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



## Delete an IP Access rule

**DELETE** `/user/firewall/access_rules/rules/{rule_id}`

Deletes an IP Access rule at the user level.

Note: Deleting a user-level rule will affect all zones owned by the user.

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


