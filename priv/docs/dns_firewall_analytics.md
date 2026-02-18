# DNS Firewall Analytics

## Table

**GET** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}/dns_analytics/report`

Retrieves a list of summarised aggregate metrics over a given time period.

See [Analytics API properties](https://developers.cloudflare.com/dns/reference/analytics-api-properties/) for detailed information about the available query parameters.

### Responses

#### 200 Table response

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "metrics": [
        "*number*"
      ]
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
    "limit": "*integer*",
    "metrics": [
      "*string*"
    ],
    "since": "*string*",
    "sort": [
      "*string*"
    ],
    "until": "*string*"
  },
  "rows": "*number*",
  "totals": {}
}
```

#### 4XX Table response failure

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
  "result": {
    "data": [
      {
        "metrics": [
          null
        ]
      }
    ],
    "data_lag": "*number*",
    "max": {},
    "min": {},
    "query": {
      "dimensions": [
        null
      ],
      "filters": null,
      "limit": null,
      "metrics": [
        null
      ],
      "since": null,
      "sort": [
        null
      ],
      "until": null
    },
    "rows": "*number*",
    "totals": {}
  },
  "success": "*boolean*"
}
```



## By Time

**GET** `/accounts/{account_id}/dns_firewall/{dns_firewall_id}/dns_analytics/report/bytime`

Retrieves a list of aggregate metrics grouped by time interval.

See [Analytics API properties](https://developers.cloudflare.com/dns/reference/analytics-api-properties/) for detailed information about the available query parameters.

### Responses

#### 200 By Time response

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "metrics": [
        [
          "*number*"
        ]
      ]
    }
  ],
  "data_lag": "*number*",
  "max": {},
  "min": {},
  "query": {
    "time_delta": "*string*"
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

#### 4XX By Time response failure

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
  "result": {
    "data": [
      {
        "metrics": [
          null
        ]
      }
    ],
    "data_lag": "*number*",
    "max": {},
    "min": {},
    "query": {
      "time_delta": "*string*"
    },
    "rows": "*number*",
    "time_intervals": [
      [
        "*string*"
      ]
    ],
    "totals": {}
  },
  "success": "*boolean*"
}
```


