# Spectrum Analytics

## Get current aggregated analytics

**GET** `/zones/{zone_id}/spectrum/analytics/aggregate/current`

Retrieves analytics aggregated from the last minute of usage on Spectrum applications underneath a given zone.

### Responses

#### 200 Get current aggregated analytics response

> Data is at `body["result"]`

```json
[
  {
    "appID": "*string*",
    "bytesEgress": "*number*",
    "bytesIngress": "*number*",
    "connections": "*number*",
    "durationAvg": "*number*"
  }
]
```

#### 4xx Get current aggregated analytics response failure

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



## Get analytics by time

**GET** `/zones/{zone_id}/spectrum/analytics/events/bytime`

Retrieves a list of aggregate metrics grouped by time interval.

### Responses

#### 200 Get analytics by time response

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "dimensions": [
        "*string*"
      ],
      "metrics": null
    }
  ],
  "data_lag": "*number*",
  "max": {},
  "min": {},
  "query": {
    "dimensions": [
      "*string*"
    ],
    "filters": "*string*",
    "limit": "*number*",
    "metrics": [
      "*string*"
    ],
    "since": null,
    "sort": [
      "*string*"
    ],
    "until": null
  },
  "rows": "*number*",
  "time_intervals": [
    [
      "*string*"
    ]
  ],
  "totals": {}
}
```

#### 4xx Get analytics by time response failure

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



## Get analytics summary

**GET** `/zones/{zone_id}/spectrum/analytics/events/summary`

Retrieves a list of summarised aggregate metrics over a given time period.

### Responses

#### 200 Get analytics summary response

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "dimensions": [
        "*string*"
      ],
      "metrics": null
    }
  ],
  "data_lag": "*number*",
  "max": {},
  "min": {},
  "query": {
    "dimensions": [
      "*string*"
    ],
    "filters": "*string*",
    "limit": "*number*",
    "metrics": [
      "*string*"
    ],
    "since": null,
    "sort": [
      "*string*"
    ],
    "until": null
  },
  "rows": "*number*",
  "time_intervals": [
    [
      "*string*"
    ]
  ],
  "totals": {}
}
```

#### 4xx Get analytics summary response failure

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


