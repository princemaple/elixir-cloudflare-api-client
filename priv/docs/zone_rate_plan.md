# Zone Rate Plan

## List Available Plans

**GET** `/zones/{zone_id}/available_plans`

Lists available plans the zone can subscribe to.

### Responses

#### 200 List Available Plans response

> Data is at `body["result"]`

```json
[
  {
    "can_subscribe": "*boolean*",
    "currency": "*string*",
    "externally_managed": "*boolean*",
    "frequency": "*string*",
    "id": "*string*",
    "is_subscribed": "*boolean*",
    "legacy_discount": "*boolean*",
    "legacy_id": "*string*",
    "name": "*string*",
    "price": "*number*"
  }
]
```

#### 4XX List Available Plans response failure

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



## Available Plan Details

**GET** `/zones/{zone_id}/available_plans/{plan_identifier}`

Details of the available plan that the zone can subscribe to.

### Responses

#### 200 Available Plan Details response

> Data is at `body["result"]`

```json
{
  "can_subscribe": "*boolean*",
  "currency": "*string*",
  "externally_managed": "*boolean*",
  "frequency": "*string*",
  "id": "*string*",
  "is_subscribed": "*boolean*",
  "legacy_discount": "*boolean*",
  "legacy_id": "*string*",
  "name": "*string*",
  "price": "*number*"
}
```

#### 4XX Available Plan Details response failure

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



## List Available Rate Plans

**GET** `/zones/{zone_id}/available_rate_plans`

Lists all rate plans the zone can subscribe to.

### Responses

#### 200 List Available Rate Plans response

> Data is at `body["result"]`

```json
[
  {
    "components": [
      null
    ],
    "currency": "*string*",
    "duration": "*number*",
    "frequency": "*string*",
    "id": "*string*",
    "name": "*string*"
  }
]
```

#### 4XX List Available Rate Plans response failure

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


