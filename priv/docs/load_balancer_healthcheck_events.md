# Load Balancer Healthcheck Events

## List Healthcheck Events

**GET** `/user/load_balancing_analytics/events`

List origin health changes.

### Responses

#### 200 List Healthcheck Events response.

> Data is at `body["result"]`

```json
[
  {
    "id": "*integer*",
    "origins": [
      {
        "address": null,
        "changed": null,
        "enabled": null,
        "failure_reason": null,
        "healthy": null,
        "ip": null,
        "name": null
      }
    ],
    "pool": {},
    "timestamp": "*string*"
  }
]
```

#### 4XX List Healthcheck Events response failure.

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
    "total_count": "*number*",
    "total_pages": "*number*"
  },
  "success": "*boolean*"
}
```


