# Query run

## Run a query

**POST** `/telemetry/query`

Run a temporary or saved query.

### Responses

#### 200 Successful request

> Data is at `body["result"]`

```json
{
  "calculations": [
    {
      "aggregates": [
        {
          "count": "*number*",
          "groups": [
            null
          ],
          "interval": "*number*",
          "sampleInterval": "*number*",
          "value": "*number*"
        }
      ],
      "alias": "*string*",
      "calculation": "*string*",
      "series": [
        {
          "data": [
            null
          ],
          "time": "*string*"
        }
      ]
    }
  ],
  "compare": [
    {
      "aggregates": [
        {
          "count": "*number*",
          "groups": [
            null
          ],
          "interval": "*number*",
          "sampleInterval": "*number*",
          "value": "*number*"
        }
      ],
      "alias": "*string*",
      "calculation": "*string*",
      "series": [
        {
          "data": [
            null
          ],
          "time": "*string*"
        }
      ]
    }
  ],
  "events": {
    "count": "*number*",
    "events": [
      {
        "$containers": {},
        "$metadata": {
          "account": null,
          "cloudService": null,
          "coldStart": null,
          "cost": null,
          "duration": null,
          "endTime": null,
          "error": null,
          "errorTemplate": null,
          "fingerprint": null,
          "id": null,
          "level": null,
          "message": null,
          "messageTemplate": null,
          "metricName": null,
          "origin": null,
          "parentSpanId": null,
          "provider": null,
          "region": null,
          "requestId": null,
          "service": null,
          "spanId": null,
          "spanName": null,
          "stackId": null,
          "startTime": null,
          "statusCode": null,
          "traceDuration": null,
          "traceId": null,
          "transactionName": null,
          "trigger": null,
          "type": null,
          "url": null
        },
        "$workers": null,
        "dataset": "*string*",
        "source": null,
        "timestamp": "*integer*"
      }
    ],
    "fields": [
      {
        "key": "*string*",
        "type": "*string*"
      }
    ],
    "series": [
      {
        "data": [
          {
            "aggregates": null,
            "count": null,
            "errors": null,
            "groups": null,
            "interval": null,
            "sampleInterval": null
          }
        ],
        "time": "*string*"
      }
    ]
  },
  "invocations": {},
  "patterns": [
    {
      "count": "*number*",
      "pattern": "*string*",
      "series": [
        {
          "data": {
            "count": null,
            "groups": null,
            "interval": null,
            "sampleInterval": null,
            "value": null
          },
          "time": "*string*"
        }
      ],
      "service": "*string*"
    }
  ],
  "run": {
    "accountId": "*string*",
    "created": "*string*",
    "dry": "*boolean*",
    "environmentId": "*string*",
    "granularity": "*number*",
    "id": "*string*",
    "query": {
      "created": "*string*",
      "description": "*string*",
      "environmentId": "*string*",
      "generated": "*boolean*",
      "id": "*string*",
      "name": "*string*",
      "parameters": {
        "calculations": null,
        "datasets": null,
        "filterCombination": null,
        "filters": null,
        "groupBys": null,
        "havings": null,
        "limit": null,
        "needle": null,
        "orderBy": null
      },
      "updated": "*string*",
      "userId": "*string*",
      "workspaceId": "*string*"
    },
    "statistics": {
      "abr_level": "*number*",
      "bytes_read": "*number*",
      "elapsed": "*number*",
      "rows_read": "*number*"
    },
    "status": "*string*",
    "timeframe": {
      "from": "*number*",
      "to": "*number*"
    },
    "updated": "*string*",
    "userId": "*string*",
    "workspaceId": "*string*"
  },
  "statistics": {
    "abr_level": "*number*",
    "bytes_read": "*number*",
    "elapsed": "*number*",
    "rows_read": "*number*"
  },
  "traces": [
    {
      "errors": [
        "*string*"
      ],
      "rootSpanName": "*string*",
      "rootTransactionName": "*string*",
      "service": [
        "*string*"
      ],
      "spans": "*number*",
      "traceDurationMs": "*number*",
      "traceEndMs": "*number*",
      "traceId": "*string*",
      "traceStartMs": "*number*"
    }
  ]
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal error

```json
{
  "errors": [
    {
      "detail": "*string*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


