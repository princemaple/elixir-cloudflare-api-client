# User Agent Blocking rules

## Create a User Agent Blocking rule

**POST** `/zones/{zone_id}/firewall/ua_rules`

Creates a new User Agent Blocking rule in a zone.

### Responses

#### 200 Create a User Agent Blocking rule response

> Data is at `body["result"]`

```json
null
```

#### 4XX Create a User Agent Blocking rule response failure

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



## List User Agent Blocking rules

**GET** `/zones/{zone_id}/firewall/ua_rules`

Fetches User Agent Blocking rules in a zone. You can filter the results using several optional parameters.

### Responses

#### 200 List User Agent Blocking rules response

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX List User Agent Blocking rules response failure

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



## Update a User Agent Blocking rule

**PUT** `/zones/{zone_id}/firewall/ua_rules/{ua_rule_id}`

Updates an existing User Agent Blocking rule.

### Responses

#### 200 Update a User Agent Blocking rule response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update a User Agent Blocking rule response failure

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



## Get a User Agent Blocking rule

**GET** `/zones/{zone_id}/firewall/ua_rules/{ua_rule_id}`

Fetches the details of a User Agent Blocking rule.

### Responses

#### 200 Get a User Agent Blocking rule response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a User Agent Blocking rule response failure

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



## Delete a User Agent Blocking rule

**DELETE** `/zones/{zone_id}/firewall/ua_rules/{ua_rule_id}`

Deletes an existing User Agent Blocking rule.

### Responses

#### 200 Delete a User Agent Blocking rule response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete a User Agent Blocking rule response failure

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


