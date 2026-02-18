# Magic Network Monitoring Rules

## Update rules

**PUT** `/accounts/{account_id}/mnm/rules`

Update network monitoring rules for account.

### Responses

#### 200 Update rules response

> Data is at `body["result"]`

```json
{
  "automatic_advertisement": "*boolean*",
  "bandwidth_threshold": "*number*",
  "duration": "*string*",
  "id": "*string*",
  "name": "*string*",
  "packet_threshold": "*number*",
  "prefix_match": "*string*",
  "prefixes": [
    "*string*"
  ],
  "type": "*string*",
  "zscore_sensitivity": "*string*",
  "zscore_target": "*string*"
}
```

#### 4XX Update rules response failure

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



## Create rules

**POST** `/accounts/{account_id}/mnm/rules`

Create network monitoring rules for account. Currently only supports creating a single rule per API request.

### Responses

#### 200 Create rules response

> Data is at `body["result"]`

```json
{
  "automatic_advertisement": "*boolean*",
  "bandwidth_threshold": "*number*",
  "duration": "*string*",
  "id": "*string*",
  "name": "*string*",
  "packet_threshold": "*number*",
  "prefix_match": "*string*",
  "prefixes": [
    "*string*"
  ],
  "type": "*string*",
  "zscore_sensitivity": "*string*",
  "zscore_target": "*string*"
}
```

#### 4XX Create rules response failure

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



## List rules

**GET** `/accounts/{account_id}/mnm/rules`

Lists network monitoring rules for account.

### Responses

#### 200 List rules response

> Data is at `body["result"]`

```json
[
  {
    "automatic_advertisement": "*boolean*",
    "bandwidth_threshold": "*number*",
    "duration": "*string*",
    "id": "*string*",
    "name": "*string*",
    "packet_threshold": "*number*",
    "prefix_match": "*string*",
    "prefixes": [
      null
    ],
    "type": "*string*",
    "zscore_sensitivity": "*string*",
    "zscore_target": "*string*"
  }
]
```

#### 4XX List rules response failure

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



## Update rule

**PATCH** `/accounts/{account_id}/mnm/rules/{rule_id}`

Update a network monitoring rule for account.

### Responses

#### 200 Update rule response

> Data is at `body["result"]`

```json
{
  "automatic_advertisement": "*boolean*",
  "bandwidth_threshold": "*number*",
  "duration": "*string*",
  "id": "*string*",
  "name": "*string*",
  "packet_threshold": "*number*",
  "prefix_match": "*string*",
  "prefixes": [
    "*string*"
  ],
  "type": "*string*",
  "zscore_sensitivity": "*string*",
  "zscore_target": "*string*"
}
```

#### 4XX Update rule response failure

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



## Get rule

**GET** `/accounts/{account_id}/mnm/rules/{rule_id}`

List a single network monitoring rule for account.

### Responses

#### 200 Get rule response

> Data is at `body["result"]`

```json
{
  "automatic_advertisement": "*boolean*",
  "bandwidth_threshold": "*number*",
  "duration": "*string*",
  "id": "*string*",
  "name": "*string*",
  "packet_threshold": "*number*",
  "prefix_match": "*string*",
  "prefixes": [
    "*string*"
  ],
  "type": "*string*",
  "zscore_sensitivity": "*string*",
  "zscore_target": "*string*"
}
```

#### 4XX Get rule response failure

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



## Delete rule

**DELETE** `/accounts/{account_id}/mnm/rules/{rule_id}`

Delete a network monitoring rule for account.

### Responses

#### 200 Delete rule response

> Data is at `body["result"]`

```json
{
  "automatic_advertisement": "*boolean*",
  "bandwidth_threshold": "*number*",
  "duration": "*string*",
  "id": "*string*",
  "name": "*string*",
  "packet_threshold": "*number*",
  "prefix_match": "*string*",
  "prefixes": [
    "*string*"
  ],
  "type": "*string*",
  "zscore_sensitivity": "*string*",
  "zscore_target": "*string*"
}
```

#### 4XX Delete rule response failure

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



## Update advertisement for rule

**PATCH** `/accounts/{account_id}/mnm/rules/{rule_id}/advertisement`

Update advertisement for rule.

### Responses

#### 200 Update advertisement for rule response

> Data is at `body["result"]`

```json
{
  "automatic_advertisement": "*boolean*"
}
```

#### 4XX Update advertisement for rule response failure

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


