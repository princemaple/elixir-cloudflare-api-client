# User Subscription

## Get User Subscriptions

**GET** `/user/subscriptions`

Lists all of a user's subscriptions.

### Responses

#### 200 Get User Subscriptions response

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

#### 4XX Get User Subscriptions response failure

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



## Update User Subscription

**PUT** `/user/subscriptions/{identifier}`

Updates a user's subscriptions.

### Responses

#### 200 Update User Subscription response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update User Subscription response failure

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



## Delete User Subscription

**DELETE** `/user/subscriptions/{identifier}`

Deletes a user's subscription.

### Responses

#### 200 Delete User Subscription response

> Data is at `body["result"]`

```json
{
  "subscription_id": "*string*"
}
```

#### 4XX Delete User Subscription response failure

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
  "subscription_id": "*string*",
  "success": "*boolean*"
}
```


