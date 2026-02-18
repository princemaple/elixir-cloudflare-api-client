# Radar Origins

## List Origins

**GET** `/radar/origins`

Retrieves a list of origins with their regions.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "origins": [
    {
      "regions": [
        {
          "region": "*string*"
        }
      ],
      "slug": "*string*"
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



## Get origin metrics distribution by dimension

**GET** `/radar/origins/summary/{dimension}`

Retrieves an aggregated summary of origin metrics grouped by the specified dimension.

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



## Get origin metrics time series

**GET** `/radar/origins/timeseries`

Retrieves the time series of origin metrics for the specified origin.

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



## Get origin metrics time series grouped by dimension

**GET** `/radar/origins/timeseries_groups/{dimension}`

Retrieves the distribution of origin metrics grouped by the specified dimension over time.

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



## Get Origin details

**GET** `/radar/origins/{slug}`

Retrieves the requested origin information with its regions.

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "origin": {
    "regions": [
      {
        "region": "*string*"
      }
    ],
    "slug": "*string*"
  }
}
```

#### 404 Not found.

```json
{
  "error": "*string*"
}
```


