# Account Subscriptions

## Create Subscription

**POST** `/accounts/{account_id}/subscriptions`

Creates an account subscription.

### Responses

#### 200 Create Subscription response

> Data is at `body["result"]`

```json
{
  "app": null,
  "component_values": [
    {
      "default": "*number*",
      "name": "*string*",
      "price": "*number*",
      "value": "*number*"
    }
  ],
  "currency": "*string*",
  "current_period_end": "*string*",
  "current_period_start": "*string*",
  "frequency": "*string*",
  "id": "*string*",
  "price": "*number*",
  "rate_plan": {
    "currency": "*string*",
    "externally_managed": "*boolean*",
    "id": "*string*",
    "is_contract": "*boolean*",
    "public_name": "*string*",
    "scope": "*string*",
    "sets": [
      "*string*"
    ]
  },
  "state": "*string*",
  "zone": {
    "id": "*string*",
    "name": "*string*"
  }
}
```

#### 4XX Create Subscription response failure

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



## List Subscriptions

**GET** `/accounts/{account_id}/subscriptions`

Lists all of an account's subscriptions.

### Responses

#### 200 List Subscriptions response

> Data is at `body["result"]`

```json
[
  {
    "app": null,
    "component_values": [
      null
    ],
    "currency": "*string*",
    "current_period_end": "*string*",
    "current_period_start": "*string*",
    "frequency": "*string*",
    "id": "*string*",
    "price": "*number*",
    "rate_plan": {
      "currency": "*string*",
      "externally_managed": "*boolean*",
      "id": "*string*",
      "is_contract": "*boolean*",
      "public_name": "*string*",
      "scope": "*string*",
      "sets": [
        null
      ]
    },
    "state": "*string*",
    "zone": {
      "id": null,
      "name": null
    }
  }
]
```

#### 4XX List Subscriptions response failure

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



## Update Subscription

**PUT** `/accounts/{account_id}/subscriptions/{subscription_identifier}`

Updates an account subscription.

### Responses

#### 200 Update Subscription response

> Data is at `body["result"]`

```json
{
  "app": null,
  "component_values": [
    {
      "default": "*number*",
      "name": "*string*",
      "price": "*number*",
      "value": "*number*"
    }
  ],
  "currency": "*string*",
  "current_period_end": "*string*",
  "current_period_start": "*string*",
  "frequency": "*string*",
  "id": "*string*",
  "price": "*number*",
  "rate_plan": {
    "currency": "*string*",
    "externally_managed": "*boolean*",
    "id": "*string*",
    "is_contract": "*boolean*",
    "public_name": "*string*",
    "scope": "*string*",
    "sets": [
      "*string*"
    ]
  },
  "state": "*string*",
  "zone": {
    "id": "*string*",
    "name": "*string*"
  }
}
```

#### 4XX Update Subscription response failure

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



## Delete Subscription

**DELETE** `/accounts/{account_id}/subscriptions/{subscription_identifier}`

Deletes an account's subscription.

### Responses

#### 200 Delete Subscription response

> Data is at `body["result"]`

```json
{
  "subscription_id": "*string*"
}
```

#### 4XX Delete Subscription response failure

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


