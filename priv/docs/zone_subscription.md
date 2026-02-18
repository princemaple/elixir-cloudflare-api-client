# Zone Subscription

## Update Zone Subscription

**PUT** `/zones/{zone_id}/subscription`

Updates zone subscriptions, either plan or add-ons.

### Responses

#### 200 Update Zone Subscription response

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

#### 4XX Update Zone Subscription response failure

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



## Create Zone Subscription

**POST** `/zones/{zone_id}/subscription`

Create a zone subscription, either plan or add-ons.

### Responses

#### 200 Create Zone Subscription response

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

#### 4XX Create Zone Subscription response failure

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



## Zone Subscription Details

**GET** `/zones/{zone_id}/subscription`

Lists zone subscription details.

### Responses

#### 200 Zone Subscription Details response

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

#### 4XX Zone Subscription Details response failure

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


