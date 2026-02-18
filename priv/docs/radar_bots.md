# Radar Bots

## List bots

**GET** `/radar/bots`

Retrieves a list of bots.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "bots": [
    {
      "category": "*string*",
      "description": "*string*",
      "kind": "*string*",
      "name": "*string*",
      "operator": "*string*",
      "slug": "*string*",
      "userAgentPatterns": [
        "*string*"
      ]
    }
  ]
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get bots HTTP requests distribution by dimension

**GET** `/radar/bots/summary/{dimension}`

Retrieves an aggregated summary of bots HTTP requests grouped by the specified dimension.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "summary_0": {}
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get bots HTTP requests time series

**GET** `/radar/bots/timeseries`

Retrieves bots HTTP request volume over time.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "aggInterval": "*string*",
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  }
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get time series distribution of bots HTTP requests by dimension.

**GET** `/radar/bots/timeseries_groups/{dimension}`

Retrieves the distribution of HTTP requests from bots, grouped by the specified dimension over time.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "meta": {
    "aggInterval": "*string*",
    "confidenceInfo": {
      "annotations": [
        {
          "dataSource": "*string*",
          "description": "*string*",
          "endDate": "*string*",
          "eventType": "*string*",
          "isInstantaneous": "*boolean*",
          "linkedUrl": "*string*",
          "startDate": "*string*"
        }
      ],
      "level": "*integer*"
    },
    "dateRange": [
      {
        "endTime": "*string*",
        "startTime": "*string*"
      }
    ],
    "lastUpdated": "*string*",
    "normalization": "*string*",
    "units": [
      {
        "name": "*string*",
        "value": "*string*"
      }
    ]
  },
  "serie_0": {
    "timestamps": [
      "*string*"
    ]
  }
}
```

#### 400 Bad request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get bot details

**GET** `/radar/bots/{bot_slug}`

Retrieves the requested bot information.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "bot": {
    "category": "*string*",
    "description": "*string*",
    "kind": "*string*",
    "name": "*string*",
    "operator": "*string*",
    "operatorUrl": "*string*",
    "slug": "*string*",
    "userAgentPatterns": [
      "*string*"
    ],
    "userAgents": [
      "*string*"
    ]
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


